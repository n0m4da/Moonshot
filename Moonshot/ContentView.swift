//
//  ContentView.swift
//  Moonshot
//
//  Created by Luis Rivera on 05/01/24.
//

import SwiftUI



struct ContentView: View {
    //MARK: - PROPERTIES
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    
    
    let missions: [Mission] = Bundle.main.decode("missions.json")
    
    
    //adapted column
    
    let columns = [
        GridItem(.adaptive(minimum: 150))]
    
    //MARK: - BODY
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVGrid(columns: columns){
                    
                    ForEach(missions) { mission in
                        NavigationLink{
                            Text("Detail view")
                        } label: {
                            VStack{
                                Image(mission.image)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100, height: 100)
                                
                                VStack{
                                    Text(mission.displayName)
                                        .font(.headline)
                                    Text(mission.launchDate ?? "N/A")
                                        .font(.caption)
                                }
                                .frame(maxWidth: .infinity)
                            
                            }
                            
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
