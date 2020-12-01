//
//  Scryfall.swift
//  mtgcubeanalyzer
//
//  Created by Nathan Christensen on 2020-11-30.
//

import Foundation

struct ScryFallCardResponse: Codable {
    let cards: [ScryFallCard]

    enum CodingKeys: String, CodingKey {
        case cards = "data"
    }
}

struct ScryFallCard: Codable, Identifiable {
    var id = UUID()
    let scryFallId: String
    let name: String
    let oracleText: String

    enum CodingKeys: String, CodingKey {
        case scryFallId = "id"
        case name
        case oracleText = "oracle_text"
    }
}
