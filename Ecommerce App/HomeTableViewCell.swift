//
//  HomeTableViewCell.swift
//  Ecommerce App
//
//  Created by Suraj on 30/10/18.
//  Copyright © 2018 Suraj. All rights reserved.
//

import UIKit

class HomeTableViewCell: UITableViewCell {

    @IBOutlet weak var homePageCollectionview: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
