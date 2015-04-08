//
//  ViewController.swift
//  roshambo
//
//  Created by Chris Archibald on 4/7/15.
//  Copyright (c) 2015 Chris Archibald. All rights reserved.
//

import UIKit

class RoshamboViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func randomIntValue() -> Int {
        let randomValue = 1 + arc4random() % 3
        
        return Int(randomValue)
    }
    
    @IBAction func rock() {
        var controller: FightViewControler
        
        controller = self.storyboard?.instantiateViewControllerWithIdentifier("FightViewControler") as
            FightViewControler
        
        controller.yourHand = self.randomIntValue()
        controller.theirHand = self.randomIntValue()
        
        self.presentViewController(controller, animated: true, completion: nil)
    }


}

