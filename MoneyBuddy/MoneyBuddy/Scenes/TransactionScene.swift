//
//  MonthlyScene.swift
//  BudgetCuts
//
//  Created by Tyler Veseth on 4/14/16.
//  Copyright © 2016 SpecialT. All rights reserved.
//

import SpriteKit

class MonthlyScene: SuperScene {
    
    override func initUI() {
        // code code code
        
        let groceryNode = CategoryNode(name: "Groceries", maxExpenses: 200)
        groceryNode.zPosition = 1
        self.addChild(groceryNode)
        
    }
}
