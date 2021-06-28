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
        
        let gameScene = GameScene(size: CGSize(width: 600, height: 500))
        gameScene.scaleMode = .aspectFit
        
        if let view = self.view as? SKView {
           view.presentScene(gameScene)
           view.preferredFramesPerSecond = 60
           view.showsFPS = true
           view.showsNodeCount = true
        }
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
