//
//  Networking.swift
//  FoundationApp
//
//  Created by Fareed Quraishi on 2024-05-30.
//

import Foundation

class Networking {
    static func loadData() async throws -> [Post] {
        
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else { fatalError("Invalid URL")}
        
        // recieve the data
        let (data, _) = try await URLSession.shared.data(from: url)
        
        // decode the JSON
        let posts = try JSONDecoder().decode([Post].self, from: data)
        
        return posts
    }
}
