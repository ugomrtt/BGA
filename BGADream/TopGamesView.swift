//
//  TopGamesView.swift
//  BGADream
//
//  Created by Ugo Mariotto on 30/11/2022.
//

import SwiftUI

struct TopGamesView: View {
    @ObservedObject var viewModel : GamesViewModel
    
    var body: some View {
        NavigationView{
            List{
                
                GameListView(games: viewModel.games)
                    
                    .navigationTitle(Text("Now playing"))
            }.onAppear{
                Task {
                    do{
                        try await viewModel.getGames()
                    } catch{
                        print(error)
                    }
                    
                }
            }
        }

    }
}
