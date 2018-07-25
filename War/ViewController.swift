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
        let leftRandomNum = arc4random_uniform(13) + 2
//        print(leftRandomNum)
        let rightRandomNum = arc4random_uniform(13) + 2
//        print(rightRandomNum)
        leftImageView.image = UIImage(named: "card10\(leftRandomNum)")
        rightImageView.image = UIImage(named: "card\(rightRandomNum)")
    }
    

}

