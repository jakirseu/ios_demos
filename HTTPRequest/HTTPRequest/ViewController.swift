//
//  ViewController.swift
//  HTTPRequest
//
//  Created by Jack Hossain on 4/17/16.
//  Copyright © 2016 Jack Hossain. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let imageURL = NSURL(string: "https://upload.wikimedia.org/wikipedia/commons/thumb/3/38/M_Rainier.jpg/450px-M_Rainier.jpg")!
        
        
        let task = NSURLSession.sharedSession().dataTaskWithURL(imageURL)  {
            
            (data, response, error) in
            
            if error == nil {
                let downloadedImage = UIImage(data: data!)
                
                dispatch_async(dispatch_get_main_queue()) {
                   self.imageView.image = downloadedImage
                
                } // end Async
                
            } // end if
            
        }// end task
        
        task.resume()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

