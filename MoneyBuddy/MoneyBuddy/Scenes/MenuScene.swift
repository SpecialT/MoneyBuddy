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

        let manageButton = STButton(defaultImage: "wow", activeImage: "waddup", size: CGSizeMake(120, 120), buttonAction: touchManageButton)
        manageButton.position = CGPointMake(0, 250)
        self.addChild(manageButton)
        
        let transactionButton = STButton(defaultImage: "wow", activeImage: "waddup", size: CGSizeMake(120, 120), buttonAction: touchTransactionButton)
        transactionButton.position = CGPointMake(0, -250)
        self.addChild(transactionButton)
        
//        let button = TSButton(texture: SKTexture(imageNamed: "wow"), activeTexture: nil, action: touchButton)
        let button = TSButton(imageName: "wow", activeImageName: nil, action: touchButton)
        button.zPosition = 1000
        self.addChild(button)
    }
    
    func touchManageButton() {
        
        SuperScene.presentScene(BudgetScene(), fromScene: self)
        
    }
    
    func touchTransactionButton() {
        
        SuperScene.presentScene(MonthlyScene(), fromScene: self)

    }
    
    func touchButton(info: [String : AnyObject]?) {
        
    }
    
}
