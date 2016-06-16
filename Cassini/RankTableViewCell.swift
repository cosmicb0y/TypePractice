//
//  RankTableViewCell.swift
//  TypePractice
//
//  Created by HyoWon Jang on 6/16/16.
//  Copyright © 2016 COMP420. All rights reserved.
//

import UIKit

class RankTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var score: UILabel!
    
    
}
