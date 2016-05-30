//
//  ViewController.swift
//  Multiple Views
//
//  Created by Jack on 4/4/16.
//  Copyright © 2016 Jack. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var textField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let secondViewController:ViewController2 = segue.destinationViewController as! ViewController2
        secondViewController.name = textField.text!
        
        
    }

}

