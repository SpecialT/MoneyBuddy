//
//  CategoryNode.swift
//  BudgetCuts
//
//  Created by Tyler Veseth on 4/14/16.
//  Copyright © 2016 SpecialT. All rights reserved.
//

import SpriteKit

class CategoryNode: SKSpriteNode {
    
    override var name: String? {
        didSet {
        
        }
    }
    private var currentExpenses: CGFloat
    private var maxExpenses: CGFloat
    
    // DTR
    
//    private var accentColor: UIColor
    
    required init(coder aDecoder: NSCoder) {
        fatalError("NSCoding not supported")
    }
    
    init(name: String, maxExpenses: CGFloat) {
        self.currentExpenses = 0
        self.maxExpenses = maxExpenses
        super.init(texture: nil, color: SKColor.clearColor(), size: CGSizeZero)
        
        self.name = name
        initUI()
    }
    
    func initUI() {
        
        self.size = CGSizeMake(576, 150)
        self.color = SKColor.greenColor()
        
        let nameLabel = SKLabelNode(fontNamed: "Kefa")
        nameLabel.position = CGPointMake(-self.size.width / 2, 0)
        nameLabel.zPosition = 1
        nameLabel.text = name
        nameLabel.fontSize = 60
        nameLabel.fontColor = SKColor.blueColor()
        nameLabel.horizontalAlignmentMode = .Left
        nameLabel.verticalAlignmentMode = .Baseline
        self.addChild(nameLabel)
        
        let addTransactionButton = STButton(defaultImage: "wow", activeImage: "waddup", size: CGSizeMake(120, 120), buttonAction: touchAddTransactionButton )
        addTransactionButton.position = CGPointMake(self.size.width / 2 - 50, 0)
        self.addChild(addTransactionButton)
    }
    
    func touchAddTransactionButton() {
    
    }
}

