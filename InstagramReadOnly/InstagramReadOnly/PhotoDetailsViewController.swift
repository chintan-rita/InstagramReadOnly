//
//  PhotoDetailsViewController.swift
//  InstagramReadOnly
//
//  Created by Chintan Rita on 9/10/15.
//  Copyright © 2015 Chintan Rita. All rights reserved.
//

import UIKit
import AFNetworking

class PhotoDetailsViewController: UIViewController {
    
    @IBOutlet weak var largePhotoView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setSelectedPhoto(photo: String) {
        let url = NSURL(string: photo)!
        self.largePhotoView.setImageWithURL(url)
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
