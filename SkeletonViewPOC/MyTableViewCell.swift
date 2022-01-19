//
//  MyTableViewCell.swift
//  SkeletonViewPOC
//
//  Created by Dikran Teymur on 19.01.2022.
//

import UIKit

class MyTableViewCell: UITableViewCell {
    
    static var identifier = "MyTableViewCell"
    
    @IBOutlet var myLabel: UILabel!
    @IBOutlet var myImageView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
