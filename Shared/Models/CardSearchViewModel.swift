//
//  CardSearchViewModel.swift
//  mtgcubeanalyzer
//
//  Created by Nathan Christensen on 2020-12-01.
//

import Foundation
import Combine

class CardSearchViewModel: ObservableObject {
    
    @Published var cards: [ScryFallCard] = []
    var cancellationToken: AnyCancellable?
}

extension CardSearchViewModel {
    func cardSearch() {
        cancellationToken = ScryFallAPI.request(.cardSearch)
            .mapError({ (error) -> Error in
                print(error)
                return error
            })
            .sink(receiveCompletion: { _ in },
                  receiveValue: {
                    self.cards = $0.cards
            })
    }
    
}
