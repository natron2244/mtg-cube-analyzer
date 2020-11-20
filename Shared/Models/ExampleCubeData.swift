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
        Card(name: "Alena, Kessig Trapper"),
        Card(name: "Court of Ire"),
        Card(name: "Emberwilde Captain"),
    ],
    archetypes: [
        Archetype(name: "Token", description: "Make all the creatures"),
        Archetype(name: "Counters", description: "Pile up counters on creatures"),
        Archetype(name: "Sacrifice", description: "Sac"),
    ]
)
