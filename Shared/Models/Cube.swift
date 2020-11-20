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

struct Card: Codable {
    var name: String
    var archetypes: [Archetype] = []
}

struct Archetype: Codable {
    var name: String
    var description: String
}
