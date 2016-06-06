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
        
        let spriteNode = SKSpriteNode(color: SKColor.blackColor(), size: CGSize(width: self.size.width, height: self.size.height / 2 - headerNode.size.height))
        spriteNode.position = CGPoint(x: 0, y: spriteNode.size.height / 2)
        spriteNode.zPosition = 1
        self.addChild(spriteNode)

        let manageButton = STButton(imageName: "wow", activeImageName: "waddup", action: touchManageButton)
        manageButton.zPosition = 1
        manageButton.position = CGPointMake(0, 250)
        self.addChild(manageButton)
        
        let transactionButton = STButton(imageName: "wow", activeImageName: "waddup", action: touchTransactionButton)
        transactionButton.zPosition = 1
        transactionButton.position = CGPointMake(0, -250)
        self.addChild(transactionButton)
    }
    
    func touchManageButton(info: [String : AnyObject]?) {
        
        SuperScene.presentScene(BudgetScene(), fromScene: self)
        
    }
    
    func touchTransactionButton(info: [String : AnyObject]?) {
        
        SuperScene.presentScene(MonthlyScene(), fromScene: self)

    }
    
    override func touchHomeButton(info: [String : AnyObject]?) {
        // Do Nothing
    }

    func touchButton(info: [String : AnyObject]?) {
        print(info)
    }

}