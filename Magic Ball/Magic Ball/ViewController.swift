//
//  ViewController.swift
//  Magic Ball
//
//  Created by Seong Kim on 2018-09-13.
//  Copyright © 2018 Seong Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomNumber: Int = 0
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        newBallImage()
    }
    
    func newBallImage(){
        randomNumber = Int(arc4random_uniform(4))
        // Do any additional setup after loading the view, typically from a nib.
        imageView.image = UIImage(named: ballArray[randomNumber])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        newBallImage()
    }
}

