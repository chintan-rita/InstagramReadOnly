//
//  PhotoViewCellTableViewCell.swift
//  InstagramReadOnly
//
//  Created by Saurabh Shah on 9/10/15.
//  Copyright © 2015 Chintan Rita. All rights reserved.
//

import UIKit

class PhotoViewCellTableViewCell: UITableViewCell {

    @IBOutlet weak var photoView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
