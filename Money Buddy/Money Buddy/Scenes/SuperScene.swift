//
//  SuperScene.swift
//  BudgetCuts
//
//  Created by Tyler Veseth on 4/14/16.
//  Copyright © 2016 SpecialT. All rights reserved.
//

import SpriteKit

class SuperScene: SKScene {
    
    override func didMoveToView(view: SKView) {
        
        backgroundColor = SKColor.whiteColor()
        
        let statusBarHeight: CGFloat = 20 / self.view!.frame.size.height * self.size.height
        
        let statusBarBG = SKShapeNode(rectOfSize: CGSize(width: self.size.width, height: statusBarHeight))
        statusBarBG.position = CGPoint(x: self.size.width/2, y: self.size.height - statusBarHeight / 2)
        statusBarBG.fillColor = SKColor.whiteColor()
        statusBarBG.strokeColor = SKColor.blueColor()
        addChild(statusBarBG)
        
        self.initUI()
    }
    
    func initUI() {
        print("Must override initUI")
    }
}
