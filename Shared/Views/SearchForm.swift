//
//  SearchForm.swift
//  mtgcubeanalyzer
//
//  Created by Nathan Christensen on 2020-12-01.
//

import SwiftUI

struct SearchForm: View {
  
    @ObservedObject var viewModel = CardSearchViewModel()
    
    var body: some View {
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/) {
            List(viewModel.cards) { card in
                HStack {
                    VStack(alignment: .leading) {
                        Text(card.name)
                            .font(.headline)
                        Text(card.oracleText)
                            .font(.subheadline)
                    }
                }
            }
            Button("Search", action: search)
        }
        
    }
    
    func search() -> Void {
        viewModel.cardSearch()
    }
}

struct SearchForm_Previews: PreviewProvider {
    static var previews: some View {
        SearchForm()
    }
}
