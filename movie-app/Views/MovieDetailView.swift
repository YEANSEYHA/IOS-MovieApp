//
//  MovieDetailView.swift
//  movie-app
//
//  Created by Yean Seyha on 22/3/23.
//

import SwiftUI

struct MovieDetailView: View {
    var movie:Movie
    
    var body: some View {
        ScrollView {
            ZStack{
                VStack{
                    Rectangle()
                        .frame(height: 180)
                        .foregroundColor(Color.gray)
                        .cornerRadius(10)
                        .shadow(radius: 5)
                    Rectangle()
                        .frame(height: 180)
                        .foregroundColor(Color.white)
                        .cornerRadius(10)
                        .shadow(radius: 5)
                }
                // Put Image on here
                VStack(alignment: .leading){
                    
                    AsyncImage(url: URL(string: movie.poster)) { phase in
                        if let image = phase.image {
                            image
                                .resizable()
                            
                            // Displays the loaded image.
                        } else if phase.error != nil {
                            Color.red // Indicates an error.
                        } else {
                            Color.blue // Acts as a placeholder.
                        }
                    }
            
                }.frame(width: 200, height: 300)
            }
            Text(movie.title)
            Text(movie.author)
            
        }
        
        
        
    }
}

struct MovieDetailView_Previews: PreviewProvider {
    static var previews: some View{
        // Create a dummy movie and pass it tnto the detail
        // view so that we can see a preview
        let model = MovieModel()
        
        MovieDetailView(movie: model.movies[0])
    }
}
