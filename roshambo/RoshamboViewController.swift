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
        
        controller.yourHand = 2
        controller.theirHand = self.randomIntValue()
        
        self.presentViewController(controller, animated: true, completion: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let controller = segue.destinationViewController as FightViewControler
        
        if segue.identifier == "clickSissor" {
            controller.yourHand = 1
        } else {
            controller.yourHand = 3
        }
        controller.theirHand = self.randomIntValue()
    }

    @IBAction func paper() {
        performSegueWithIdentifier("clickPaper", sender: self)
    
    }

}

