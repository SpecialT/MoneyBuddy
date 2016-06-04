//
//  BudgetScene.swift
//  BudgetCuts
//
//  Created by Tyler Veseth on 4/14/16.
//  Copyright © 2016 SpecialT. All rights reserved.
//

import SpriteKit

class BudgetScene: SuperScene {
    
    var money = 0.0
    var total = SKLabelNode()
    
    override func initUI() {
        // code code code
        
        self.addCategory("funky", maxExp: 200)
        
        total = SKLabelNode(text: "$0.00")
        total.position = CGPoint(x: 0, y: 200)
        total.fontColor = SKColor.whiteColor()
        total.zPosition = 2
        total.fontSize = 180
        self.addChild(total)

        let spriteNode = SKSpriteNode(color: SKColor.greenColor(), size: CGSize(width: self.size.width, height: self.size.height / 2 - headerNode.size.height))
        spriteNode.position = CGPoint(x: 0, y: spriteNode.size.height / 2)
        spriteNode.zPosition = 1
        self.addChild(spriteNode)
        
        let sizeze = CGSize(width: 200, height: 200)
        let button = ButtonNode(defaultImage: "wow", activeImage: "waddup", size: sizeze, buttonAction: introduceYourself)
        button.position.y = -150
        self.addChild(button)
    }
    
    func introduceYourself() {
        money += 0.1
        total.text = "$\(money)0"
    }
    
    func addCategory(name: String, maxExp: CGFloat) {
        let dict: [String : AnyObject] = [
            "name": name,
            "maxExp": maxExp
        ]
        
        NSNotificationCenter.defaultCenter().postNotificationName(NOTIFICATION_ADD_CATEGORY, object: self, userInfo: dict)
    }
}
