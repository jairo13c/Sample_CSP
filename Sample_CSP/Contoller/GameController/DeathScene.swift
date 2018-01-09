//
//  DeathScene.swift
//  Sample_CSP
//
//  Created by Cortez, Jairo on 12/19/17.
//  Copyright © 2017 Cortez, Jairo. All rights reserved.
//

import UIKit

public class DeathScene: SKScene
{
    override public func  didMove(to view: SKView) -> Void
    {
        self.backgroundColor = SKColor.blue
        
        let gameOver = SKLabelNode(text: "Game over")
        gameOver.name = "Game over"
        gameOver.fontSize = 65
        gameOver.fontColor = SKColor.red
        gameOver.position = CGPoint(x: frame.midX, y: frame.midY)
        
        addChild(gameOver)
    }
    override public func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) -> Void
    {
        let touch = touches.first
        let touchLocation = touch?.Location(in: self)
        let touchedNode = self.atPoint(touchLocation!)
        if(touchedNode.name == "game over")
    {
            let newGameScene = GameScene(size: size)
            newGameScene.scaleMode = scaleMode
            let transitionType = SKTransition.fliporizontal(withDuration: 0.5)
            view?.presentScene(newGameScene, transition: transitionType)
        }
    }
}
