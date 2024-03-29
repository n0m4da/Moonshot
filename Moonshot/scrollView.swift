//
//  scrollView.swift
//  Moonshot
//
//  Created by Luis Rivera on 06/01/24.
//

import SwiftUI
struct CustomText : View {
    let text: String
    
    var body: some View {
        Text(text)
    }
    
    init(text: String) {
        print("creating a new customText")
        self.text = text
    }
}
struct scrollView: View {
    var body: some View {
        ScrollView(.horizontal){
            LazyHStack(spacing: 20){
                ForEach(0..<100){
                   CustomText(text: "Item \($0)")
                        
                }
                
            }
           
        }
    }
}

#Preview {
    scrollView()
}
