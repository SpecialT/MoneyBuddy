//
//  CategoryNode.swift
//  BudgetCuts
//
//  Created by Tyler Veseth on 4/14/16.
//  Copyright © 2016 SpecialT. All rights reserved.
//

import SpriteKit

class CategoryNode {
    
    private var name: String
    private var currentExpenses: CGFloat
    private var maxExpenses: CGFloat
    
    // DTR
    
//    private var accentColor: UIColor
    
    required init(coder aDecoder: NSCoder) {
        fatalError("NSCoding not supported")
    }
    
    init(name: String, maxExpenses: CGFloat) {
        self.name = name
        self.currentExpenses = 0
        self.maxExpenses = maxExpenses
    }
}
