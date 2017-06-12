//
//  GameViewController.swift
//  Swiper
//
//  Created by LUKAS BARRY on 6/11/17.
//  Copyright © 2017 Barry Enterprises. All rights reserved.
//

import UIKit
import SpriteKit
import GameKit

class GameViewController: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Create the game scene
        let scene = PlayScene(size: view.bounds.size)
        let skView = view as! SKView
        skView.showsFPS = false
        skView.showsNodeCount = false
        skView.ignoresSiblingOrder = true
        scene.scaleMode = .ResizeFill
        skView.presentScene(scene)
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
}
