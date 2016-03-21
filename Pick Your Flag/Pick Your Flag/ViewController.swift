//
//  ViewController.swift
//  Pick Your Flag
//
//  Created by Jack on 3/21/16.
//  Copyright © 2016 Jack. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate {
    var country = ["Pick your Country","Bangladesh", "India", "Pakistan", "Srilanka", "Nepal"]
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var labelView: UILabel!
   

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        
        return 1;
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent: Int) -> Int{
        
        return country.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?{
        
        return country[row]
        
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){
        
        let countrySelected = country[row]
        
        switch (countrySelected){
            
        case "Bangladesh":
            imageView.image = UIImage(named: "Bangladesh.jpg ")
            labelView.text = "You selected Bangladesh"
            
        case "India":
            imageView.image = UIImage(named: "India.png")
            labelView.text = "You selected India"
            
        case "Pakistan":
            imageView.image = UIImage(named: "Pakistan.png")
            labelView.text = "You selected Pakistan"
            
        case "Srilanka":
            imageView.image = UIImage(named: "Srilanka.jpg")
            labelView.text = "You selected Srilanka"
            
        case "Nepal":
            imageView.image = UIImage(named: "Nepal.jpg")
            labelView.text = "You selected Nepal"
            
        default:
            imageView.image = UIImage(named: "music.jpg")
            labelView.text = "You selected "
            
            
            
        }// end switch
        
        return
    }// end of didSelec
}

