//
//  MovieReviewTableViewCell.swift
//  Movie Reviews
//
//  Created by DALE MUSSER on 3/4/17.
//  Copyright © 2017 Tech Innovator. All rights reserved.
//

import UIKit

class MovieReviewTableViewCell: UITableViewCell {

    @IBOutlet weak var reviewImageView: UIImageView!
    @IBOutlet weak var headlineLabel: UILabel!
    @IBOutlet weak var bylineLabel: UILabel!
    @IBOutlet weak var mpaaRatingLabel: UILabel!
    @IBOutlet weak var openingDateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
