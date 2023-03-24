//
//  ContentView.swift
//  movie-app
//
//  Created by Yean Seyha on 22/3/23.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var model = MovieModel()
    @State private var emailAddress = ""
    private var gridItemLayout = [GridItem(.flexible(), spacing: 20), GridItem(.flexible(), spacing: 20)]
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Text("Welcome Scarleet !!!")
                    .padding(.leading,20)
                    .foregroundColor(.gray)
                    .font(.system(size: 36))
                
                Text("Find your favorite films")
                    .padding([.top,.leading],20)
                    .font(.system(size: 30))
                // Search Button here
                TextField("Search for movies", text: $emailAddress)
                            .textFieldStyle(.roundedBorder)
                            .padding()
                // Header
                Text("Trending movies")
                    .padding([.top,.leading],20)
                    .font(.system(size: 25))
                
                ScrollView {
                    LazyVGrid(columns: gridItemLayout,spacing: 20){
                        ForEach (model.movies){
                            model in
                            NavigationLink(
                                destination: MovieDetailView(movie:model),
                            label: {
                                VStack(alignment: .leading){
                                    
                                    VStack(alignment: .leading){
                                        
                                        AsyncImage(url: URL(string: model.poster)) { phase in
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
                                
                                    }.frame(width: 150, height: 200)
                                    
                                    Text(model.title)
                                    Text(model.author)
                                }
                             }
                            )
                            }
                            
                        }
                        
                    }
                }
            }
            .padding()
        }
            
        
        
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
