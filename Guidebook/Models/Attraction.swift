//
//  Attraction.swift
//  Guidebook
//
//  Created by Tayami Rai on 08/01/2024.
//

import Foundation

struct Attraction: Identifiable, Decodable{
    
    let id = UUID()
    var name: String
    var summary: String
    var longDescription: String
    var imageName: String
    var latLong: String
    
}
