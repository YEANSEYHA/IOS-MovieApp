//
//  Movie.swift
//  movie-app
//
//  Created by Yean Seyha on 22/3/23.
//

import Foundation

struct Movie:  Decodable,Identifiable{
    var id: Int
    var title : String
    var author : String
    var poster : String
}
