//
//  ExampleCubeData.swift
//  mtgcubeanalyzer (iOS)
//
//  Created by Nathan Christensen on 2020-11-19.
//

import Foundation

let exampleCube: Cube = Cube(
    name: "Commander Legends",
    description: "A draft format that feels like commander!",
    cards: [
        Card(id: 0, name: "Alena, Kessig Trapper", archetypes: [
            ArchetypeRating(archetype: "Token", rating: 5.0),
            ArchetypeRating(archetype: "Sacrifice", rating: 3.0),
        ]),
        Card(id: 1, name: "Court of Ire"),
        Card(id: 2, name: "Emberwilde Captain", archetypes: [
            ArchetypeRating(archetype: "Counters", rating: 4.0),
        ]),
        Card(id: 3, name: "Clone", archetypes: [
            ArchetypeRating(archetype: "Token", rating: 2.0),
            ArchetypeRating(archetype: "Counters", rating: 2.0),
            ArchetypeRating(archetype: "Sacrifice", rating: 2.0),
        ]),
    ],
    archetypes: [
        Archetype(id: 0, name: "Token", description: "Make all the creatures"),
        Archetype(id: 1, name: "Counters", description: "Pile up counters on creatures"),
        Archetype(id: 2, name: "Sacrifice", description: "Sac"),
    ]
)
