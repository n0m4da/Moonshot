//
//  Mission.swift
//  Moonshot
//
//  Created by Luis Rivera on 08/01/24.
//

import Foundation




struct Mission: Codable, Identifiable{
    
    //can be outside but for maintenance keep inside
    struct CrewRole: Codable{
        let name : String
        let role: String
    }

    let id: Int
    let launchDate: String?
    let crew: [CrewRole]
    let description: String
    
    
    var displayName: String {
        "Apollo \(id)"
    }
    
    var image: String{
        "apollo\(id)"
    }
}
