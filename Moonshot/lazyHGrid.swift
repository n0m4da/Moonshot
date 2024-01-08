//
//  lazyHGrid.swift
//  Moonshot
//
//  Created by Luis Rivera on 08/01/24.
//

import SwiftUI

struct lazyHGrid: View {
    let layout = [
        GridItem(.adaptive(minimum: 80, maximum: 120))
    ]
    
    var body: some View {
        ScrollView(.horizontal){
            LazyHGrid(rows: layout){
                ForEach(0..<1000){
                    Text("item \($0)")
                }
            }
        }
    }
}

#Preview {
    lazyHGrid()
}
