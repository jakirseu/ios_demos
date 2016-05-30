//
//  ViewController.swift
//  GuessNumber
//
//  Created by Jack on 3/17/16.
//  Copyright © 2016 Jack. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet var message: UILabel!
    @IBOutlet var textField: UITextField!

    @IBAction func guessFunc(sender: AnyObject) {
        let correct = String(arc4random_uniform(5))
        let guess = textField.text
    
        if guess == correct{
            message.text = "Correct Answer"
            message.textColor = UIColor.greenColor()
            
        }else{
            message.text = "try again"
            message.textColor = UIColor.redColor()
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

