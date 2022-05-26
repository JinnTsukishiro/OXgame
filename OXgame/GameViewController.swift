//
//  GameViewController.swift
//  OXgame
//
//  Created by 赤木英洸 on 2022/05/26.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController,UIGestureRecognizerDelegate {
    var scene: GameScene!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let skView = view as!SKView
        skView.isMultipleTouchEnabled = false
        
        scene = GameScene(size: skView.bounds.size)
        scene.scaleMode = .aspectFill
        skView.presentScene(scene)
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    @IBAction func didTap(sender: UITapGestureRecognizer) {
        let location = sender.location(in: view)
        print("tapped at \(location.x), \(location.y)")
        scene.mark(location: location)
    }
    
    @IBAction func didTap(_ sender: UITapGestureRecognizer) {
    }
    
}
