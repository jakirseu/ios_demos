//
//  DetailViewController.swift
//  Birds in Bangladesh
//
//  Created by Jack on 4/9/16.
//  Copyright © 2016 Jack. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet var detailImage: UIImageView!
    @IBOutlet var detailName: UILabel!
    @IBOutlet var detailInfo: UILabel!


    
    var birdDetailImage = ""
    var birdDetailName = ""
    var birdDetailInfo = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        detailImage.image = UIImage(named: birdDetailImage)
        detailName.text = birdDetailName
        detailInfo.text = birdDetailInfo
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
}
