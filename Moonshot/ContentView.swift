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
                                    .padding()
                                
                                VStack{
                                    Text(mission.displayName)
                                        .font(.headline)
                                        .foregroundStyle(.white)
                                    Text(mission.formattedLaunchDate)
                                        .font(.caption)
                                        .foregroundStyle(.gray)
                                }
                                .padding(.vertical)
                                .frame(maxWidth: .infinity)
                                .background(.lightBackground)
                            }
                            .clipShape(.rect(cornerRadius: 10))
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(.lightBackground)
                            )
                            
                        }
                    }
                }
                .padding([.horizontal, .bottom])
            }
            .navigationTitle("Moonshot")
            .navigationBarTitleDisplayMode(.large)
            .preferredColorScheme(.dark)
            
        }
    }
}

#Preview {
    ContentView()
}
