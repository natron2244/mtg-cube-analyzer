//
//  Scryfall.swift
//  mtgcubeanalyzer
//
//  Created by Nathan Christensen on 2020-11-30.
//

import Foundation

struct ScryFallCardResponse: Codable {
    let cards: [Card]

    enum CodingKeys: String, CodingKey {
        case cards = "data"
    }
}
