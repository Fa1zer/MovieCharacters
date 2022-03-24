//
//  ContentView.swift
//  MovieCharacters
//
//  Created by Artemiy Zuzin on 23.03.2022.
//

import SwiftUI

struct MovieCharactersView: View {
    private let characktersName = [(image: "spiderman first",
                                    name: "Peter Parker",
                                    filmName: "Spider-Man"),
                                   (image: "spiderman second",
                                    name: "Peter Parker",
                                    filmName: "The Amazing Spider-Man"),
                                   (image: "spiderman third",
                                    name: "Peter Parker",
                                    filmName: "Spider-Man: Homecoming"),
                                   (image: "marty",
                                    name: "Marty McFly",
                                    filmName: "Back tot the Future"),
                                   (image: "doc",
                                    name: "Emmett Brown",
                                    filmName: "Back tot the Future"),
                                   (image: "iron man",
                                    name: "Tony Stark",
                                    filmName: "Iron Man"),
                                   (image: "black widow",
                                    name: "Natasha Romanoff",
                                    filmName: "Black Widow"),
                                   (image: "daryl",
                                    name: "Daryl Dixon",
                                    filmName: "The Walking Dead"),
                                   (image: "hulk",
                                    name: "Bruce Banner",
                                    filmName: "HULK"),
                                   (image: "antman",
                                    name: "Hank Pym",
                                    filmName: "Ant Man"),
                                   (image: "thanos",
                                    name: "Avengers: Final",
                                    filmName: "Thanos"),
                                   (image: "dr strange",
                                    name: "Dr Strange",
                                    filmName: "Stephen Strange")]
    
    var body: some View {
        
        NavigationView {
            
            List {
                
                ForEach(0 ..< self.characktersName.count, id: \.self) { index in
                    
                    NavigationLink(destination: CharacterInformationView(moreInformation: self.characktersName[index])) {
                        
                        VStack(alignment: .leading) {
                            
                            Image(self.characktersName[index].image)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 100, height: 100)
                                .clipShape(Circle())
                                .overlay {
                                    
                                    Circle().stroke(.gray, lineWidth: 5)
                                    
                                }
                            
                            Spacer()
                            
                            HStack {
                                
                                Text(self.characktersName[index].name)
                                    .font(.title)
                                    .foregroundColor(.black)
                                    
                                
                                Spacer()
                                
                                Text("Film: \(self.characktersName[index].filmName)")
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                                
                            }
                            
                        }
                        .frame(height: 150)
                        .padding([.top, .bottom], 15)
                        
                    }
                    .navigationTitle("Movie Characters")
                    
                }
                        
            }
            
        }
        
    }
}

struct MovieCharactersView_Previews: PreviewProvider {
    static var previews: some View {
        MovieCharactersView()
    }
}
