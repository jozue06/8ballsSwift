//
//  ViewController.swift
//  8balls
//
//  Created by Joshua McClung on 11/23/18.
//  Copyright © 2018 Joshua McClung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomBallNumber : Int = 0
    @IBOutlet weak var balls: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ballsChange()
    }

    
    @IBAction func ballsButton(_ sender: UIButton) {
        ballsChange()
    }
    
    func ballsChange(){
        randomBallNumber = Int(arc4random_uniform(4))
        balls.image = UIImage(named: ballArray[randomBallNumber])
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        ballsChange()
    }
}

