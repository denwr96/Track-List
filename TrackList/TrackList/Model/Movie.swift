//
//  Movie.swift
//  TrackList
//
//  Created by deniss.lobacs on 17/11/2021.
//

import Foundation

struct Movie {
    let title: String
    let year: String
    let poster: String
    
    static func createMovie() -> [Movie] {
        var movies: [Movie] = []
        
        let titles = DataManager.shared.movie
        let years = DataManager.shared.year
        let posters = DataManager.shared.poster
        
        for index in 0..<titles.count {
            let movie = Movie(title: titles[index], year: years[index], poster: posters[index])
            movies.append(movie)
        }
        print(movies)
        return movies
    }
}

