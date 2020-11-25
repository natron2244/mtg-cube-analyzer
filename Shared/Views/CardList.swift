//
//  CardList.swift
//  mtgcubeanalyzer
//
//  Created by Nathan Christensen on 2020-11-22.
//

import SwiftUI

struct CardList: View {
    var title: String = ""
    var cards: [Card]
    
    var body: some View {
        List( cards ) { card in
            NavigationLink(destination: CardDetail( card: card)) {
                CardRow(card: card)
            }
        }
        .navigationTitle(title)
    }
}

struct CardList_Previews: PreviewProvider {
    static var previews: some View {
        CardList(cards: exampleCube.cards)
    }
}
