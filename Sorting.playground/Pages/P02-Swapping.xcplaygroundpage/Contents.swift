import PlaygroundSupport
let deck = Deck(comparator: nil, seed: false)
let (sceneView, scene) = CardSortScene.setupScene(deck)


/*:
 
 Don't worry about the code here – this sets up the deck of cards that we'll be manipulating, and the scene that displays it.
 
 ![Make School Banner](./swift_banner.png)
 
 # Swapping
 
 _Swapping_ two elements in an `Array` sounds pretty simple. You take the _element_ at the first index, the _element_ at the second index, and switch their places. Here, we've written out such a swap function for you, but its implementation is wrong. Can you find what's wrong and fix it?
 
 */
extension Deck {
/*:
     
 - note: Inside this class, the variable `cards` is an array of `Card` types. `Card` is a `struct` that we've defined ourselves, with two `Int` parameters -- `suit` and `value`.
     
    A _struct_ is a lot like a _class_. It can define it's own methods and properties but it cannot use inheritance. There are a few other differences that instructors can help you with but they are not important for this exercise!
 
 */

    public func swap(_ first: Int, _ second: Int) {
        // Fix this!
		let temp = cards[first]
        cards[first] = cards[second]
        cards[second] = temp
    }
    
/*:
     
 - callout(Hint): If it says _Copying_ in the preview then you did not do it right! You might need to create a new variable to store one of the values during the swap!
     
 */
}
/*:
 
 Now in order to test our swap function, we'll call it from the special `Deck` object that we've created for you. Simply call `deck.swap(x, y)` with two integers between 0 and 12 (since we have 13 cards in our array).
 
     deck.swap(0, 1)
 
 - important: Remember that array indices start go from 0 to _one less than_ the length of the array!
 
 */

deck.swap(0, 6)
deck.swap(1, 3)
deck.swap(2, 4)
deck.swap(3, 6)
deck.swap(4, 12)
deck.swap(5, 12)
deck.swap(9, 5)
deck.swap(6, 8)
deck.swap(8, 9)
deck.swap(9, 10)
deck.swap(11, 12)
deck.swap(7, 8)
deck.swap(8, 9)
deck.swap(9, 10)
deck.swap(10, 11)
deck.swap(11, 12)



/*:
 
 - callout(Challenge): The `Deck` _on this page_ will be the same every time you run the code. Can you get it sorted? Treat _Aces_ as `1`, _Jacks_ as `11`, _Queens_ as `12`, and _Kings_ as `13`. _Suit_ (or the symbol on the card) does not matter right now).
 
 Once the deck is sorted, hit the `Next` button to move on to the next section. We'll teach you _Bubblesort_, a foolproof sorting algorithm that uses the swap function!
 */
//: [Previous](@previous) | [Next](@next)
/*:
 Don't worry about this code. This takes the scene and deck information and displays it.
 */
sceneView.presentScene(scene)
PlaygroundPage.current.liveView = sceneView
