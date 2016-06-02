//
//  GameViewController.swift
//  BudgetCuts
//
//  Created by Tyler Veseth on 4/14/16.
//  Copyright (c) 2016 SpecialT. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(addCategory), name: NOTIFICATION_ADD_CATEGORY, object: nil)
        
        let scene = MenuScene(size: CGSize(width: 768, height: 1024))
        let skView = self.view as! SKView
        
        skView.showsFPS = true
        skView.showsNodeCount = true
        
        skView.ignoresSiblingOrder = true
        skView.multipleTouchEnabled = true
        scene.scaleMode = .AspectFill
        
        skView.presentScene(scene)
    }
    
    func addCategory(notification: NSNotification) {
        if let userInfo = notification.userInfo as? [String : AnyObject] {
            if let name = userInfo["name"], let maxExp = userInfo["maxExp"] {
                // communicate with database
                print(name,maxExp)
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }
}
