//
//  PhotosViewController.swift
//  InstagramReadOnly
//
//  Created by Chintan Rita on 9/10/15.
//  Copyright © 2015 Chintan Rita. All rights reserved.
//

import UIKit

class PhotosViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        makeNetworkRequest()
        // Do any additional setup after loading the view.
    }
    
    func makeNetworkRequest() {
        var clientId = "46e4a03f28954aed8d2bc587dd698124"
        
        var url = NSURL(string: "https://api.instagram.com/v1/media/popular?client_id=\(clientId)")!
        var request = NSURLRequest(URL: url)
        
        NSURLConnection.sendAsynchronousRequest(request, queue: NSOperationQueue.mainQueue()) { (response,data,err) -> Void in
            
            
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
