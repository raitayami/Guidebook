//
//  City.swift
//  Guidebook
//
//  Created by Tayami Rai on 08/01/2024.
//

import Foundation

struct City: Identifiable, Decodable{
    
    let id = UUID()
    var name: String
    var summary: String
    var imageName: String
    
    var attractions: [Attraction]
}
