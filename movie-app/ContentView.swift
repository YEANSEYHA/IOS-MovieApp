//
//  ContentView.swift
//  movie-app
//
//  Created by Yean Seyha on 22/3/23.
//

import SwiftUI

struct ContentView: View {
    @State private var emailAddress = ""
    private var gridItemLayout = [GridItem(.flexible(), spacing: 20), GridItem(.flexible(), spacing: 20)]
    var body: some View {
        
        VStack(alignment: .leading) {
            Text("Welcome Scarleet !!!")
                .padding(.leading,20)
                .foregroundColor(.brown)
            
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
                    VStack(alignment: .leading){
                        
                        VStack(alignment: .leading){
                            
                            AsyncImage(url: URL(string: "https://m.media-amazon.com/images/M/MV5BZWMyYzFjYTYtNTRjYi00OGExLWE2YzgtOGRmYjAxZTU3NzBiXkEyXkFqcGdeQXVyMzQ0MzA0NTM@._V1_FMjpg_UX1000_.jpg")) { phase in
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
                        
                        Text("Telnet")
                        Text("Christopher Nolan")
                    }
                    VStack(alignment: .leading){
                        VStack(alignment: .leading){
                            
                            AsyncImage(url: URL(string: "https://www.tenetfilm.com/assets/images/fullbanner.jpg")) { phase in
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
                        
                        Text("The Irishman")
                        Text("Martin Scorsces")
                    }
                    VStack(alignment: .leading){
                        VStack(alignment: .leading){
                            
                            AsyncImage(url: URL(string: "https://m.media-amazon.com/images/M/MV5BMTc5MDE2ODcwNV5BMl5BanBnXkFtZTgwMzI2NzQ2NzM@._V1_.jpg")) { phase in
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
                        
                        Text("Avenger Endgame")
                        Text("Martin Scorsces")
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
