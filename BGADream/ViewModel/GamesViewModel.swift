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
    @Published var searchGames = [Game]()
       
    let gameFetcher = GameFetcher()
    var currentSkip = 1
    
    func getGames() async throws {
        let gameResponse = try await gameFetcher.getGames(skip: currentSkip)
        games.append(contentsOf: gameResponse.games)
        currentSkip += 25
    }
    
    func searchGame(name: String) async throws {
        let gameResponse = try await gameFetcher.searchGame(name: name)
        searchGames = gameResponse.games
    }
}

