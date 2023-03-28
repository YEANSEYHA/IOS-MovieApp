//
//  MovieModel.swift
//  movie-app
//
//  Created by Yean Seyha on 22/3/23.
//

import Foundation

class MovieModel:ObservableObject {
    //List of movies
    @Published var movies = [Movie]()
    
    init () {
        
        // Call get remote data function
        getRemoteData()
        addMovie()
    }
    func addMovie(){
        movies.append(Movie(
            id: 123,
              title: "Avatar",
              author: "YEAN SEYHA",
              poster: "https://m.media-amazon.com/images/M/MV5BZDA0OGQxNTItMDZkMC00N2UyLTg3MzMtYTJmNjg3Nzk5MzRiXkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_.jpg",
            movieUrl: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4"
            ))
        
        

    }
    func getRemoteData() {
        // String path
        let urlString = "http://localhost:5001/api/movies"
        
        // Create a url object
        let url = URL(string: urlString)
        guard url != nil else {
            // Couldn't create a url
            return
        }
        // create a URL Request object
        let request = URLRequest(url: url!)
        
        // Get the session and kick off the task
        let session = URLSession.shared
        let dataTask = session.dataTask(with: request) {(data, response, error) in
            // Check if there's an error
            guard error == nil else {
                // There was an error
                return
            }
            do {
                // create json decoder
                let decoder = JSONDecoder()
                
                // Decode
                let movies = try decoder.decode([Movie].self, from: data!)
                print("let print123")
                // Append parsed movies intoz movies property
                self.movies += movies
                
            } catch {
                // couldn't parse json
            }
           
            // handle the response
        }
        // kick off data task
        dataTask.resume()
        
    }
}
