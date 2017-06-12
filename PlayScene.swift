//
//  PlayScene.swift
//  Swiper
//
//  Created by LUKAS BARRY on 6/11/17.
//  Copyright © 2017 Barry Enterprises. All rights reserved.
//

import SpriteKit

class PlayScene: SKScene {
    // screen dimensions
    private var screenWidth: CGFloat!
    private var screenHeight: CGFloat!
    
    //play label
    private var play: SKLabelNode!
    
    override func didMoveToView(view: SKView) {
        // screen dimensions
        screenWidth = view.frame.size.width
        screenHeight = view.frame.size.height
        
        // background color
        backgroundColor = UIColor.whiteColor()
        
        // play button
        play = SKLabelNode(text: "play")
        play.fontName = "Futura"
        play.fontSize = screenWidth * 0.1
        
        play.position = CGPointMake(screenWidth / 2.0, screenHeight / 2.0)
        play.fontColor = UIColor.grayColor()
        play.alpha = 0.5
        play.name = "play"
        addChild(play)
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        super.touchesEnded(touches, withEvent: event)
        
        let touch = touches.first as UITouch!
        let point = touch.locationInView(self.view)
        let node = self.nodeAtPoint(point)
        
        if node.name == play.name {
            let gameScene = GameScene(size: scene!.size)
            gameScene.scaleMode = .AspectFill
            self.view?.presentScene(gameScene, transition: SKTransition.revealWithDirection(.Left, duration: 0.5))
        }
    }
}
