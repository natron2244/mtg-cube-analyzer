//
//  Cube.swift
//  mtgcubeanalyzer (iOS)
//
//  Created by Nathan Christensen on 2020-11-19.
//

import Foundation

struct Cube: Codable {
    var name: String
    var description: String
    var cards: [Card]
    var archetypes: [Archetype]
}

struct Card: Codable, Identifiable {
    var id = UUID()
    let scryFallId: String
    let name: String
    let oracleText: String
    var archetypes: [ArchetypeRating] = []
    
    enum CodingKeys: String, CodingKey {
        case scryFallId = "id"
        case name
        case oracleText = "oracle_text"
    }
}

struct Archetype: Codable, Identifiable {
    var id = UUID()
    var name: String
    var description: String
}

struct ArchetypeRating: Codable {
    var archetype: String
    var rating: Double 
}
