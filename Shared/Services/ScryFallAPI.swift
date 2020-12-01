//
//  ScryFallAPI.swift
//  mtgcubeanalyzer
//
//  Created by Nathan Christensen on 2020-12-01.
//

import Foundation
import Combine

enum ScryFallAPI {
    static let apiClient = APIClient()
    static let baseUrl = URL(string: "https://api.scryfall.com/")!
}

enum ScryFallAPIPath: String {
    case cardSearch = "cards/search"
}

extension ScryFallAPI {
    
    static func request(_ path: ScryFallAPIPath) -> AnyPublisher<ScryFallCardResponse, Error> {
        guard var components = URLComponents(url: baseUrl.appendingPathComponent(path.rawValue), resolvingAgainstBaseURL: true)
            else { fatalError("Couldn't create URLComponents") }
        // Nathan: Update with dictornary
        components.queryItems = [URLQueryItem(name: "q", value: "counter")]
        
        let request = URLRequest(url: components.url!)
        
        return apiClient.run(request)
            .map(\.value)
            .eraseToAnyPublisher()
    }
}
