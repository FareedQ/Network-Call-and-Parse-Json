//
//  Post.swift
//  FoundationApp
//
//  Created by Fareed Quraishi on 2024-05-30.
//

import Foundation

struct Post: Codable, Identifiable {
    var id: Int
    var title: String
    var body: String
}
