//
//  feedCell.swift
//  Mersgram
//
//  Created by Mert Ahmet Yiğit on 18.02.2018.
//  Copyright © 2018 Mert Yiğit. All rights reserved.
//

import UIKit

class feedCell: UITableViewCell {
    
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var postImage: UIImageView!
    @IBOutlet weak var postText: UITextView!
    
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
