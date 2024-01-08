//
//  Bundle-Decodable.swift
//  Moonshot
//
//  Created by Luis Rivera on 08/01/24.
//

import Foundation


extension Bundle {
    func decode<T: Codable>(_ filename: String) -> T {
        guard let url = self.url(forResource: filename, withExtension: nil) else {
            fatalError("Failed to locate \(filename) in bundle.")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(filename) from bundle.")
        }
        
        let decoder = JSONDecoder()
        
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Fail to decode \(filename) from bundle")
        }
        
        return loaded
    }
}
