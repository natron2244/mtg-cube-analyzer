//
//  ArchetypeList.swift
//  mtgcubeanalyzer
//
//  Created by Nathan Christensen on 2020-11-22.
//

import SwiftUI

struct ArchetypeList: View {
//    @EnvironmentObject private var cube: Cube
    
    var body: some View {
        NavigationView {
            List( exampleCube.archetypes ) { archetype in
                NavigationLink(destination: CardList( cards: self.cardsForArchetpye(targetArchetype: archetype.name))) {
                    ArchetypeRow(archetype: archetype)
                }
            }
//            Nathan: What to do in this case
//            .navigationBarTitle(Text(cube.name))
        }
    }
    
    func cardsForArchetpye(targetArchetype: String) -> [Card] {
        return exampleCube.cards.filter{ $0.archetypes.contains(where: { archetype in archetype.archetype == targetArchetype } ) }
    }
}

struct ArchetypeList_Previews: PreviewProvider {
    static var previews: some View {
        ArchetypeList()
    }
}
