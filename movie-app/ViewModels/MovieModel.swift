//
//  MovieModel.swift
//  movie-app
//
//  Created by Yean Seyha on 22/3/23.
//

import Foundation

class MovieModel {
    var movies = [Movie]()
    
    init () {
        // Create some dummy movie data
//        var movie = Movie()
        movies.append(Movie(title: "Spider Man",
              author: "Ben Mashiro",
              poster: "https://m.media-amazon.com/images/M/MV5BMTc5MDE2ODcwNV5BMl5BanBnXkFtZTgwMzI2NzQ2NzM@._V1_.jpg"
            ))
        movies.append(Movie(title: "Spider Man 2",
              author: "Ben Mashiro 2",
              poster: "https://m.media-amazon.com/images/M/MV5BMTc5MDE2ODcwNV5BMl5BanBnXkFtZTgwMzI2NzQ2NzM@._V1_.jpg"
            ))
    }
}
