//
//  ButtonNode.swift
//  Money Buddy
//
//  Created by Tyler Veseth on 6/2/16.
//  Copyright © 2016 SpecialT. All rights reserved.
//

import Foundation
import SpriteKit

class STButton: SKNode {
    private var defaultButton: SKSpriteNode
    private var activeButton: SKSpriteNode
    private var action: () -> Void
    
    init(defaultImage: String, activeImage: String, size: CGSize, buttonAction: () -> Void) {
        defaultButton = SKSpriteNode(imageNamed: defaultImage)
        activeButton = SKSpriteNode(imageNamed: activeImage)
        defaultButton.zPosition = 2
        activeButton.zPosition = 1
        defaultButton.size = size
        activeButton.size = size
        activeButton.hidden = true
        action = buttonAction
        
        super.init()
        
        userInteractionEnabled = true
        self.addChild(activeButton)
        self.addChild(defaultButton)
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        defaultButton.hidden = true
        activeButton.hidden = false
    }
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        for touch: AnyObject in touches {
            let location: CGPoint = touch.locationInNode(self)
            
            if defaultButton.containsPoint(location) {
                activeButton.hidden = false
                defaultButton.hidden = true
            } else {
                activeButton.hidden = true
                defaultButton.hidden = false
            }
        }
    }
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        defaultButton.hidden = false
        activeButton.hidden = true
        action()
    }
}
