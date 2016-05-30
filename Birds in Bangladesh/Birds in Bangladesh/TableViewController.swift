//
//  TableViewController.swift
//  Birds in Bangladesh
//
//  Created by Jack on 4/4/16.
//  Copyright © 2016 Jack. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    var birdArray:[Bird] = [Bird]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

     
        let bird1 = Bird(birdName: "Doyel", birdImage: "doyel.jpg", birdInfo: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.")
        let bird2 = Bird(birdName: "Koyel", birdImage: "koyel.jpg", birdInfo: "Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus.")
        let bird3 = Bird(birdName: "Moneyna", birdImage: "moyna.jpg", birdInfo: "Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus.")
        
        birdArray.append(bird1)
        birdArray.append(bird2)
        birdArray.append(bird3)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return birdArray.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! MyCell

        var birdItem = birdArray[indexPath.row]
        cell.MyImageCiew.image = UIImage(named: birdItem.birdImage)
        cell.label.text = birdItem.birdName

        return cell
    }
 

    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let birdSelected = birdArray[indexPath.row]
        let detailVC:DetailViewController = self.storyboard?.instantiateViewControllerWithIdentifier("DetailViewControlar") as! DetailViewController
        
        detailVC.birdDetailImage = birdSelected.birdImage
        detailVC.birdDetailName = birdSelected.birdName
        detailVC.birdDetailInfo = birdSelected.birdInfo
        
        self.presentViewController(detailVC, animated: true, completion: nil)
        
    }
}
