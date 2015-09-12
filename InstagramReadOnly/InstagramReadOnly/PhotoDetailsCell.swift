//
//  PhotoDetailsCell.swift
//  InstagramReadOnly
//
//  Created by Chintan Rita on 9/10/15.
//  Copyright © 2015 Chintan Rita. All rights reserved.
//

import UIKit

class PhotoDetailsCell: UITableViewCell {

    @IBOutlet weak var largePhotoView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setSelectedPhoto(photo:String) {
        let url = NSURL(string: photo)!
        self.largePhotoView.setImageWithURL(url)
    }
    

}
