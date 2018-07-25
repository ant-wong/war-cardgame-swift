//
//  ViewController.swift
//  War
//
//  Created by Anthony Wong on 2018-07-15.
//  Copyright © 2018 Anthony Wong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    /* Keeping track of the scores */
    var leftScore = 0
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /* Deal Button Handler */
    @IBAction func dealTapped(_ sender: Any) {
        /* Randomize 2 numbers to generate card images */
        let leftRandomNum = arc4random_uniform(13) + 2
        let rightRandomNum = arc4random_uniform(13) + 2

        leftImageView.image = UIImage(named: "card\(leftRandomNum)")
        rightImageView.image = UIImage(named: "card\(rightRandomNum)")
        
        if leftRandomNum > rightRandomNum {
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
        } else if rightRandomNum > leftRandomNum {
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
        } else {
            print("It's a tie")
        }
        
    }
    

}

