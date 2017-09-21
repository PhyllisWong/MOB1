import SpriteKit

open class CardSortScene: SKScene {
    
    let deck: Deck
    var cardNodes = [CardNode]()
    
    var actionQueue = [CardAction]()
    
    let actionLabel: SKLabelNode
    
    public init(deck: Deck, size: CGSize) {
        self.deck = deck
        actionLabel = SKLabelNode(fontNamed: "Helvetica Neue")
        super.init(size: size)
        deck.updateDelegate = enqueueAction
        for i in 0..<deck.cards.count {
            let card = deck.cards[i]
            let cardNode = CardNode(card: card)
            cardNode.position = cardPositionForIndex(i)
            cardNode.zPosition = CGFloat(i)
            self.addChild(cardNode)
            cardNodes.append(cardNode)
        }
        
        actionLabel.fontSize = 24.0
        actionLabel.verticalAlignmentMode = .baseline
        actionLabel.horizontalAlignmentMode = .center
        actionLabel.position = CGPoint(x: 160, y: 50)
        self.addChild(actionLabel)
    }

    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override open func didMove(to view: SKView) {
        let delayTime = DispatchTime.now() + Double(Int64(1 * Double(NSEC_PER_SEC))) / Double(NSEC_PER_SEC)
        DispatchQueue.main.asyncAfter(deadline: delayTime) { () -> Void in
            self.animate()
        }
    }
    
    func animate() {
        if let action = actionQueue.first {
            switch action.actionType {
            case .copy:
                let copy = CardNode(card: action.newValue!)
                copy.position = cardPositionForIndex(action.originIndex!)
                self.addChild(copy)
                
                actionLabel.text = "Copying \(action.newValue!.text()) to index \(action.targetIndex)"
                
                let old = self.cardNodes[action.targetIndex]
                old.animateDisappear({})
                copy.animateMove(cardPositionForIndex(action.targetIndex), zPosition: CGFloat(action.targetIndex), completion: { () -> Void in
                    old.removeFromParent()
                    self.cardNodes[action.targetIndex] = copy
                    self.actionQueue.removeFirst()
                    self.animate()
                })
            case .swap:
                let first = cardNodes[action.originIndex!]
                let second = cardNodes[action.targetIndex]
                
                actionLabel.text = "Swapping \(action.newValue!.text()) with \(action.oldValue!.text())"
                
                first.animateMove(cardPositionForIndex(action.targetIndex), zPosition: CGFloat(action.targetIndex), completion: {})
                second.animateMove(cardPositionForIndex(action.originIndex!), zPosition: CGFloat(action.originIndex!), completion: { () -> Void in
                    self.cardNodes[action.originIndex!] = second
                    self.cardNodes[action.targetIndex] = first
                    
                    self.actionQueue.removeFirst()
                    self.animate()
                })
            case .set:
                actionLabel.text = "Setting index \(action.targetIndex) to \(action.newValue!.text())"
                
                let copy = CardNode(card: action.newValue!)
                copy.position = cardPositionForIndex(action.targetIndex)
                copy.animateAppear({})
                let old = self.cardNodes[action.targetIndex]
                old.animateDisappear({ () -> Void in
                    old.removeFromParent()
                    self.cardNodes[action.targetIndex] = copy
                    self.actionQueue.removeFirst()
                    self.animate()
                })
            }
        } else {
            if deck.comparator != nil {
                if deck.isSorted() {
                    actionLabel.text = "Sorting successful! :)"
                } else {
                    actionLabel.text = "Not sorted! :("
                }
            }
        }
    }
    
    open func enqueueAction(_ action: CardAction) {
        if let last = actionQueue.last {
            if let combinedAction = CardAction.reduce(last, second: action) {
                actionQueue[actionQueue.count-1] = combinedAction
                return
            }
        }
        actionQueue.append(action)
    }
    
    func cardPositionForIndex(_ index: Int) -> CGPoint {
        let v = CGFloat(index)
        let origin = CGPoint(x: 50, y: 450)
        let delta = CGPoint(x: 10, y: -30)
        return CGPoint(x: origin.x + delta.x * v, y: origin.y + delta.y * v)
    }
    
    open static func setupScene(_ deck: Deck) -> (SKView, CardSortScene) {
        let size = CGSize(width: 320, height: 568)
        let sceneView = SKView(frame: CGRect(origin: CGPoint.zero, size: size))
        sceneView.wantsLayer = true
        let scene = CardSortScene(deck: deck, size: size)
        scene.scaleMode = .aspectFill
        let background = SKSpriteNode(imageNamed: "card_sorting-background")
        background.anchorPoint = CGPoint(x: 0, y: 0)
        background.zPosition = -10
        scene.addChild(background)
        return (sceneView, scene)
    }
}
