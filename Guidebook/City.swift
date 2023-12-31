//
//  City.swift
//  Guidebook
//
//  Created by Leonard McCook-Carr on 6/12/23.
//

import Foundation

struct City: Identifiable, Decodable {
    
    let id = UUID()
    var name: String
    var summary: String
    var imageName: String
    
    var attractions: [Attraction]
}
