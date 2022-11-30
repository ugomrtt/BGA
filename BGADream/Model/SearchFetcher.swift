//
//  SearchFetcher.swift
//  BGADream
//
//  Created by Ugo Mariotto on 30/11/2022.
//

import SwiftUI

struct SearchFetcher: View {
    let jsonDecoder = JSONDecoder()
    
    let url = "https://api.boardgameatlas.com/api/search?order_by=rank&client_id=fBJctT9jBK"
    
    func searchGame(name:String, skip: Int) async throws -> GamesResponse{
        let searchGameURL = URL(string: url + "&name=\(name)&skip=\(skip)")!
        let request = URLRequest(url: searchGameURL)
        let (data, _) = try await URLSession.shared.data(for: request)
        
        let gameResponse = try jsonDecoder.decode(GamesResponse.self, from: data)
        return gameResponse
    }
}
