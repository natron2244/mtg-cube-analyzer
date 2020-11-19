//
//  ContentView.swift
//  Shared
//
//  Created by Nathan Christensen on 2020-11-19.
//

import SwiftUI

struct Cube: Codable {
    var cards: [Card]
}

struct Card: Codable {
    var name: String
}

struct ContentView: View {

    @State var currentCube = Cube(cards: [])
    
    var body: some View {
            List(currentCube.cards, id: \.name) { card in
                VStack(alignment: .leading) {
                    Text(card.name)
                        .font(.headline)
                }
            }
            .onAppear(perform: loadData)
        }
    
    func loadData() {
        fetchData { (dict, error) in
            let cube = praseCards(data: dict ?? ["data": []])
            debugPrint(cube)
            self.currentCube = cube;
        }
    }

    func fetchData(completion: @escaping ([String:Any]?, Error?) -> Void) {
        let url = URL(string: "https://api.scryfall.com/cards/search?order=set&q=e%3Acmr&unique=prints")!

        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data else { return }
            do {
                if let array = try JSONSerialization.jsonObject(with: data, options: .allowFragments) as? [String:Any]{
                    completion(array, nil)
                }
            } catch {
                print(error)
                completion(nil, error)
            }
        }
        task.resume()
    }
    
    func praseCards(data: [String:Any]) -> Cube {
        let cards = data["data"] as! NSArray
        debugPrint(cards)
        let cardNames = cards.map { (card) -> Card in
            let castCard = card as AnyObject
            return Card(name: castCard["name"] as! String);
        }
        debugPrint(cardNames)
        
        return Cube(cards: cardNames);
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let demoCube = Cube(cards: [
            Card(name: "Cool Card"),
            Card(name: "Other Card")
        ])
        ContentView(currentCube: demoCube)
    }
}
