//
//  GameScene.swift
//  OXgame
//
//  Created by 赤木英洸 on 2022/05/26.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    var turn_o = true
    override func sceneDidLoad() {
        // Create shape node to use during mouse interaction
    }
    required init(coder aDecoder: NSCoder) {
        fatalError("NSCoder not supported")
    }
    
    override init(size: CGSize) {
        super.init(size: size)
        
        anchorPoint = CGPoint(x: 0, y: 0)
        
        let background = SKSpriteNode(imageNamed: "oxboad")
        background.position = CGPoint(x: 0, y: 0)
        background.anchorPoint = CGPoint(x: 0, y: 0)
        addChild(background)
        backgroundColor = SKColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
    
    override func update(_ currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
    
    func transform(w: CGFloat) -> CGFloat {
        switch w {
        case let w where 0 < w && w < 80:
            return 0
        case let w where 80 < w && w < 160:
            return 80
        case let w where 160 < w && w < 240:
            return 160
        default:
            return -80
        }
    }
    
    func mark(location: CGPoint) {
        let imageName = turn_o ? "o" : "x"
        let sign = SKSpriteNode(imageNamed: imageName)
        sign.position = CGPoint(x: transform(w: location.x), y: 160 - transform(w: location.y - 320))
            sign.anchorPoint = CGPoint(x: 0, y: 0)
            addChild(sign)
        
            turn_o = !turn_o
    }

}
