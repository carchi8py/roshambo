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
    
    
    @IBAction func dismiss() {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}