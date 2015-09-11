//
//  PhotosViewController.swift
//  InstagramReadOnly
//
//  Created by Chintan Rita on 9/10/15.
//  Copyright © 2015 Chintan Rita. All rights reserved.
//

import UIKit
import AFNetworking

class PhotosViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    var photos = []

    override func viewDidLoad() {
        super.viewDidLoad()
        makeNetworkRequest()
        tableView.rowHeight = 320;
        // Do any additional setup after loading the view.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return photos.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("com.PhotoViewCell", forIndexPath: indexPath) as! PhotoViewCellTableViewCell
        
        if let photo = photos[indexPath.row] as? NSDictionary {
            if let images = photo["images"] as? NSDictionary {
                if let lowResolutionImage = images["low_resolution"] as? NSDictionary {
                    if let url = lowResolutionImage["url"] as? String {
                        let photoUrl = NSURL(string:url)!
                        cell.photoView.setImageWithURL(photoUrl)
                    }
                }
            }
        }
        
        return cell
    }
    
    func makeNetworkRequest() {
        let clientId = "46e4a03f28954aed8d2bc587dd698124"
        
        let url = NSURL(string: "https://api.instagram.com/v1/media/popular?client_id=\(clientId)")!
        let request = NSURLRequest(URL: url)
        
        NSURLConnection.sendAsynchronousRequest(request, queue: NSOperationQueue.mainQueue()) { (response, data, error) -> Void in
            let responseDictionary = try! NSJSONSerialization.JSONObjectWithData(data!, options: []) as! NSDictionary
        
        
        self.photos = responseDictionary["data"] as! NSArray
        
        self.tableView.reloadData()
            

        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
