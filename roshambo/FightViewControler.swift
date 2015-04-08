//
//  FightViewControler.swift
//  roshambo
//
//  Created by Chris Archibald on 4/7/15.
//  Copyright (c) 2015 Chris Archibald. All rights reserved.
//

import Foundation
import UIKit

class FightViewControler: UIViewController {
    
    var yourHand: Int?
    var theirHand: Int?
    
    @IBOutlet var resultImage: UIImageView!
    
    override func viewWillAppear(animated: Bool) {
        
        // 3 = paper
        // 2 = rock
        // 1 = sissor
        // 3 beats 2
        // 2 beats 1
        // 1 beats 3
        
        if let yourHand = self.yourHand {
            if let theirHand = self.theirHand {
                println(theirHand)
                println(yourHand)
                if theirHand == 3 && yourHand == 2 {
                    self.resultImage.image = UIImage(named:"paper-rock")
                }
                else if theirHand == 1 && yourHand == 2 {
                    self.resultImage.image = UIImage(named:"rock-scissors")
                }
                else if theirHand == 2 && yourHand == 1 {
                    self.resultImage.image = UIImage(named:"rock-scissors")
                }
                else if theirHand == 3 && yourHand == 1 {
                    self.resultImage.image = UIImage(named:"scissor-paper")
                }
                else if theirHand == 1 && yourHand == 3 {
                    self.resultImage.image = UIImage(named:"scissor-paper")
                }
                else if theirHand == 2 && yourHand == 3 {
                    self.resultImage.image = UIImage(named:"paper-rock")
                }
                else if theirHand == yourHand {
                    self.resultImage.image = UIImage(named:"tie")
                }
            } else {
                self.resultImage.image = nil
            }
        } else {
            self.resultImage.image = nil
        }
        println(self.resultImage.image)
        self.resultImage.alpha = 0
    }
    
    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(0.3) {
            self.resultImage.alpha = 1
        }
    }
    
    
    @IBAction func dismiss() {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}