//
//  TouchbleView.swift
//  TouchableDelegation
//
//  Created by Eliel A. Gordon on 10/5/17.
//  Copyright © 2017 MakeSchool. All rights reserved.
//

import UIKit


class TouchableView: UIView {
    var delegate: MyViewDelegate?

    let touchGesture = UITapGestureRecognizer()
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        touchGesture.addTarget(self, action: #selector(handleTap(tap:)))
        
        self.addGestureRecognizer(touchGesture)
        print("Touchable View init with Coder")
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        touchGesture.addTarget(self, action: #selector(handleTap(tap:)))
        self.addGestureRecognizer(touchGesture)
        print("Touchable View init")
    }
    
    // Called when view is tapped
    // send this text "Tapped" to the UILabel called 
    @objc func handleTap(tap: UITapGestureRecognizer) {
        print("Tapped")
        delegate?.userDidTouch()
    }

}





