//
//  ArchetypeRow.swift
//  mtgcubeanalyzer
//
//  Created by Nathan Christensen on 2020-11-19.
//

import SwiftUI

struct ArchetypeRow: View {
    var archetype: Archetype
    
    var body: some View {
        Text(archetype.name)
    }
}

struct ArchetypeRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
        ArchetypeRow(archetype: exampleCube.archetypes[0])
        ArchetypeRow(archetype: exampleCube.archetypes[1])
        }.previewLayout(.fixed(width: 300, height: 70))
    }
}
