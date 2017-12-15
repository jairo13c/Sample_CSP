//
//  ProgrammingViewController.swift
//  Sample_CSP
//
//  Created by Cortez, Jairo on 12/13/17.
//  Copyright © 2017 Cortez, Jairo. All rights reserved.
//

import UIKit
import SpriteKit

public class ProgrammingViewController: UIViewController
{

    override public func viewDidLoad() -> Void
    {
        super.viewDidLoad()
        let gameScene = StartScene(size: view.bounds.size)
        let gameView = view as! SKView
        
        gameView.showsFPS = true
        gameView.showsNodeCount = true
        gameView.ignoresSiblingOrder = true
        
        gameScene.scaleMode = .resizeFill
        gameView.presentScene(gameScene)

        // Do any additional setup after loading the view.
    }

    override public func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
