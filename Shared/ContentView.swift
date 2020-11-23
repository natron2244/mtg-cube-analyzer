//
//  ContentView.swift
//  Shared
//
//  Created by Nathan Christensen on 2020-11-19.
//

import SwiftUI

struct ContentView: View {

    @State var currentCube = exampleCube
    
    var body: some View {
        // Nathan: Pickup here, adding archtypes
        // Nathan: Look at tail wind
        ArchetypeList()
//            List(currentCube.cards, id: \.name) { card in
//                VStack(alignment: .leading) {
//                    Text(card.name)
//                        .font(.headline)
//                    #if os(macOS)
//                    Divider()
//                    #endif
//                }
//            }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(currentCube: exampleCube)
    }
}
