//
//  NavigationLinkView.swift
//  Moonshot
//
//  Created by Luis Rivera on 05/01/24.
//

import SwiftUI

struct NavigationLinkView: View {
    var body: some View {
        
        NavigationStack{
            List(0..<100){ row in
                NavigationLink("row \(row)"){
                    Text("detail \(row)")
                }
            }
        }
//        NavigationStack{
//            NavigationLink{
//                Text("Detail view")
//            }label: {
//                VStack{
//                    Text("this is a label")
//                    Text("So is this")
//                    Image(systemName: "face.smiling")
//                }
//                .font(.largeTitle)
//            }
//                .navigationTitle("SwiftUI")
//        }
    }
}

#Preview {
    NavigationLinkView()
}
