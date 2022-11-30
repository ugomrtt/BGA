//
//  GamesViewModel.swift
//  BGADream
//
//  Created by Ugo Mariotto on 30/11/2022.
//

import SwiftUI

@MainActor
class GamesViewModel: ObservableObject{
    @Published var games = [Game]()
       
    let gameFetcher = GameFetcher()
    
    
    func getGames() async throws {
        
        let gameResponse = try await gameFetcher.getGames()
        games.append(contentsOf: gameResponse.games)
    }
}

