//
//  GameViewController.swift
//  MissileCommander
//
//  Created by Seunghun Yang on 2021/06/28.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let skView = SKView(frame: CGRect(x: 0, y: 0, width: 600, height: 500))
    
        let gameScene = GameScene(size: CGSize(width: 600, height: 500))
        gameScene.scaleMode = .aspectFit
        skView.presentScene(gameScene)
        skView.preferredFramesPerSecond = 60
        skView.showsFPS = true
        skView.showsNodeCount = true
        skView.presentScene(gameScene)
        
        self.view.addSubview(skView)
    }
    
    override var shouldAutorotate: Bool {
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
