//
//  CardDetail.swift
//  mtgcubeanalyzer
//
//  Created by Nathan Christensen on 2020-11-22.
//

import SwiftUI

struct CardDetail: View {
    var card: Card
    
    var body: some View {
        Text(card.name)
    }
}

struct CardDetail_Previews: PreviewProvider {
    static var previews: some View {
        CardDetail(card: exampleCube.cards[0])
    }
}
