//
//  MovieDetailViewController.swift
//  TrackList
//
//  Created by deniss.lobacs on 17/11/2021.
//

import UIKit

class MovieDetailViewController:
    
 
    UIViewController {

    
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieNameLabel: UILabel!
    var movie: Movie!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if movie != nil {
            movieImageView.image = UIImage(named: movie.poster)
            movieNameLabel.text = movie.title + " - " + movie.poster
        }
    }
}
