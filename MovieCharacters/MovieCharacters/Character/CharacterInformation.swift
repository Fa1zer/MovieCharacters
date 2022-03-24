//
//  CharacterInformation.swift
//  MovieCharacters
//
//  Created by Artemiy Zuzin on 24.03.2022.
//

import SwiftUI

struct CharacterInformationView: View {
    @State var moreInformation: (image: String, name: String, filmName: String)?
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: true) {
            
            VStack(alignment: .leading) {
                
                HStack {
                    
                    Image(self.moreInformation?.image ?? "")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 100, height: 100)
                        .clipShape(Circle())
                        .overlay {
                            
                            Circle().stroke(.gray, lineWidth: 5)
                            
                        }
                    
                    Spacer()
                    
                    Text(self.moreInformation?.name ?? "")
                        .font(.title)
                    
                    Spacer()
                    
                }
                
                Spacer()
                
                Text("More information:")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
                Spacer()
                
                Text("Film: \(self.moreInformation?.filmName ?? "")")
                
                Spacer()
                                
            }
            .padding([.leading, .trailing, .top], 15)
            
        }
        .navigationTitle("Character")
        
    }
}

struct CharacterInformationView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterInformationView()
    }
}
