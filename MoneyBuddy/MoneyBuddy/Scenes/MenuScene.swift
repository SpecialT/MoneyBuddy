//
//  GameScene.swift
//  BudgetCuts
//
//  Created by Tyler Veseth on 4/14/16.
//  Copyright (c) 2016 SpecialT. All rights reserved.
//

import SpriteKit

class MenuScene: SuperScene {
    
    override func initUI() {
        // code code code
        print("hello")
        let spriteNode = SKSpriteNode(color: SKColor.blackColor(), size: CGSize(width: self.size.width, height: self.size.height / 2 - headerNode.size.height))
        spriteNode.position = CGPoint(x: 0, y: spriteNode.size.height / 2)
        spriteNode.zPosition = 1
        self.addChild(spriteNode)
        
///////////////////////        SuperScene.presentScene(BudgetScene(), fromScene: self)
    }
    
}
