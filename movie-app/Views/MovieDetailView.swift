//
//  MovieDetailView.swift
//  movie-app
//
//  Created by Yean Seyha on 22/3/23.
//

import SwiftUI
import AVKit

struct MovieDetailView: View {
    let movie:Movie
    var body: some View {
        
        let url = URL(string:movie.movieUrl)
        ScrollView {
            ZStack{
                VStack{
                    Rectangle()
                        .frame(height: 200)
                        .foregroundColor(Color.gray)
                        .cornerRadius(10)
                        .shadow(radius: 5)
                        .padding(0)
                    Rectangle()
                        .frame(height: 200)
                        .foregroundColor(Color.white)
                        .cornerRadius(10)
                        .shadow(radius: 5)
                }
                // Only show video if we get a valid URL
//                VStack {
//
//                    if url != nil {
//                        VideoPlayer(player: AVPlayer(url: url!))
//                            .cornerRadius(10)
//                    }
//                }
                
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

                }.frame(width: 250, height: 350)
            }
            
            HStack{
                VStack(alignment: .leading, spacing: 0){
                    Text(movie.title)
                        .font(.system(size: 30))
                        .bold()
                    Text("Directed by:\(movie.author)")
                        .font(.system(size: 12))
                }
                Spacer()
                VStack{
                    Text("Rating: 8.2").frame(alignment: .top)
                    Spacer()
                }
                
            }
            
            HStack{
                
                Text("Animation")
                    .padding()
                    .border(.gray)
                Text("Fun")
                    .padding()
                    .border(.gray)
                Text("Family")
                    .padding()
                    .border(.gray)
                Spacer()
            }
            
            VStack (alignment: .leading){
                Text("Synopsis")
                    .font(.system(size: 24))
                    .bold()
                Text("A Secret agent embarks on a dangerous time-bending mission to prevent the start of World War III.")
            }
            
            
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
