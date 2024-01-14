//
//  astronautView.swift
//  Moonshot
//
//  Created by Luis Rivera on 13/01/24.
//

import SwiftUI

struct astronautView: View {
    let astronaunt: Astronaut
    
    var body: some View {
        ScrollView{
            VStack{
                Image(astronaunt.id)
                    .resizable()
                    .scaledToFit()
                
                Text(astronaunt.description)
                    .padding()
            }
       
        }
        .background(.darkBackground)
        .navigationTitle(astronaunt.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
   return astronautView(astronaunt: astronauts["aldrin"]!)
        .preferredColorScheme(.dark)
}
