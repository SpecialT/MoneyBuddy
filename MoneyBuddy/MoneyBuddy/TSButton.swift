//
//  TSButton.swift
//  MoneyBuddy
//
//  Created by Todd Sutter on 6/4/16.
//  Copyright © 2016 SpecialT. All rights reserved.
//

import Foundation
import SpriteKit

class TSButton : SKSpriteNode {
    
    private var action: (([String : AnyObject]?) -> (Void))?
    var action1: ((Void) -> (Void))?
    private var arguments: [String : AnyObject]?
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("NSCoding not supported")
    }
    
    init(texture: SKTexture?, activeTexture: SKTexture?, action: (([String : AnyObject]?) -> (Void))?) {
        self.action = action
        super.init(texture: texture, color: SKColor.clearColor(), size: texture?.size() ?? CGSizeZero)
        
        userInteractionEnabled = true
    }
    
    convenience init(imageName: String?, activeImageName: String?, action: (([String : AnyObject]?) -> (Void))?) {
        let texture: SKTexture? = imageName != nil ? SKTexture(imageNamed: imageName!) : nil
        let activeTexture: SKTexture? = activeImageName != nil ? SKTexture(imageNamed: activeImageName!) : nil
        self.init(texture: texture, activeTexture: activeTexture, action: action)
    }
    
    func setArguments(arguments: [String : AnyObject]?) {
        self.arguments = arguments
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        action?(arguments)
    }
    
}