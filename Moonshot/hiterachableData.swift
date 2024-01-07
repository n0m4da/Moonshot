//
//  hiterachableData.swift
//  Moonshot
//
//  Created by Luis Rivera on 06/01/24.
//
import SwiftUI

struct User: Codable {
    let name: String
    let address: Address
}

struct Address: Codable{
    let street: String
    let city: String
}

struct hiterachableData: View {
    //MARK: - properties
    
    
    //MARK: - body
    var body: some View {
        Button("decode json"){
            let input = """
                {
                    "name": "Taylor Swift",
"address": {
"street": "555, Taylor Swift Avenue",
"city": "Nashville"
}
}
"""
            
            let data = Data(input.utf8)
            let decoder = JSONDecoder()
            
            if let user  = try? decoder.decode(User.self, from: data) {
                print(user.address.street)
            }else{
                print("error")
            }
        }
    }
}

#Preview {
    hiterachableData()
}
