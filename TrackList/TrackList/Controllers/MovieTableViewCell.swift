//
//  MovieTableViewCell.swift
//  TrackList
//
//  Created by deniss.lobacs on 16/11/2021.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    @IBOutlet weak var movieLabel: UILabel!
    @IBOutlet weak var movieImageView: UIImageView!
    
    @IBOutlet weak var movieYearLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
