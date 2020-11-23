//
//  CardRow.swift
//  mtgcubeanalyzer
//
//  Created by Nathan Christensen on 2020-11-22.
//

import SwiftUI

struct CardRow: View {
    var card: Card
    
    var body: some View {
        Text(card.name)
    }
}

struct CardRow_Previews: PreviewProvider {
    static var previews: some View {
        CardRow(card: exampleCube.cards[0])
            .previewLayout(.fixed(width: 300, height: 70))
    }
}
