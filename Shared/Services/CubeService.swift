//
//  CubeService.swift
//  mtgcubeanalyzer (iOS)
//
//  Created by Nathan Christensen on 2020-11-19.
//

import Foundation

func loadData() {
    fetchData { (dict, error) in
        let cube = praseCards(data: dict ?? ["data": []])
        debugPrint(cube)
//      Nathan: Later publish the results to model
//      self.currentCube = cube;
    }
}

func fetchData(completion: @escaping ([String:Any]?, Error?) -> Void) {
    // Nathan: Read up on URLComponents
    let url = URL(string: "https://api.scryfall.com/cards/search?order=set&q=e%3Acmr&unique=prints")!
    

    let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
        guard let data = data else { return }
        do {
            // Nathan: Try just diffening what you want and see if the magic happens
            // Nathan: See if there a lib to filter on json objects
            // Nathan: Decoder -> Maybe it filters for you
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
    // Look at swift lint
    let rawCards = data["data"] as! NSArray
    debugPrint(rawCards)
    let cards = rawCards.map { (card) -> Card in
        let castCard = card as AnyObject
        let id = castCard["id"] as! Int
        return Card(id: id, name: castCard["name"] as! String);
    }
    debugPrint(cards)
    
    let name = "Commander Legends"
    let description = "A draft format that feels like commander!"
    
    let archetypes = [
        Archetype(id: 0, name: "Token", description: "Make all the creatures"),
        Archetype(id: 1, name: "Counters", description: "Pile up counters on creatures"),
        Archetype(id: 2, name: "Sacrifice", description: "Sac"),
    ]
    
    return Cube(
        name: name,
        description: description,
        cards: cards,
        archetypes: archetypes
    )
}
