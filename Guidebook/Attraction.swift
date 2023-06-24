//
//  Attraction.swift
//  Guidebook
//
//  Created by Leonard McCook-Carr on 6/13/23.
//

import Foundation

struct Attraction: Identifiable, Decodable {
    
    let id = UUID()
    var name: String
    var summary: String
    var longDescription: String
    var imageName: String
    var latLong: String
    
}

