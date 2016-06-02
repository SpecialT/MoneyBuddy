//
//  BudgetScene.swift
//  BudgetCuts
//
//  Created by Tyler Veseth on 4/14/16.
//  Copyright © 2016 SpecialT. All rights reserved.
//

import SpriteKit

class BudgetScene: SuperScene {
    
    override func initUI() {
        // code code code
        
        self.addCategory("funky", maxExp: 200)
        
        let jelly = SKSpriteNode(color: SKColor.blueColor(), size: CGSize(width: 50, height: 50))
        jelly.position = CGPoint(x: 200, y: 200)
        jelly.zPosition = 7
        self.addChild(jelly)
        
        let total = SKLabelNode(text: "$0.00")
        total.position = CGPoint(x: self.size.width/2, y: self.size.height/3 * 2)
        total.fontColor = SKColor.blackColor()
        total.fontSize = 180
        self.addChild(total)

        
    }
    
    func addCategory(name: String, maxExp: CGFloat) {
        let dict: [String : AnyObject] = [
            "name": name,
            "maxExp": maxExp
        ]
        
        NSNotificationCenter.defaultCenter().postNotificationName(NOTIFICATION_ADD_CATEGORY, object: self, userInfo: dict)
    }
}
