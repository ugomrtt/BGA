//
//  GameFetcher.swift
//  BGADream
//
//  Created by Ugo Mariotto on 30/11/2022.
//

import Foundation

class GameFetcher {
    let jsonDecoder = JSONDecoder()
    
    let url = "https://api.boardgameatlas.com/api/search?order_by=rank&client_id=fBJctT9jBK"
    
    func getGames() async throws -> GamesResponse{
        let gamesURL = URL(string: url)!
        let request = URLRequest(url: gamesURL)
        let (data, _) = try await URLSession.shared.data(for: request)
        
        let gameResponse = try jsonDecoder.decode(GamesResponse.self, from: data)
        return gameResponse
    }
}
