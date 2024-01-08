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
    
    //MARK: - BODY
    var body: some View {
        Text(String(astronauts.count))
        Text(String(missions.count))
    }
}

#Preview {
    ContentView()
}
