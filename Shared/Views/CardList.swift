//
//  CardList.swift
//  mtgcubeanalyzer
//
//  Created by Nathan Christensen on 2020-11-22.
//

import SwiftUI

struct CardList: View {
    var cards: [Card]
    
    var body: some View {
        List( cards ) { card in
            NavigationLink(destination: CardDetail( card: card)) {
                CardRow(card: card)
            }
        }
//            Nathan: What to do in this case
//            .navigationBarTitle(Text(title))
    }
}

struct CardList_Previews: PreviewProvider {
    static var previews: some View {
        CardList(cards: exampleCube.cards)
    }
}
