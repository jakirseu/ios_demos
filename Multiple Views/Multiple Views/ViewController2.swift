//
//  ViewController2.swift
//  Multiple Views
//
//  Created by Jack on 4/4/16.
//  Copyright © 2016 Jack. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet var label: UILabel!
    
    var name = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = "Nice to mee you, " + name

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
   
    }

}
