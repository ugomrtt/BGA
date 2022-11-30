//
//  ContentView.swift
//  BGADream
//
//  Created by Ugo Mariotto on 30/11/2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = GamesViewModel()
    var body: some View {
        
        TabView{
            TopGamesView(viewModel: viewModel)
                .tabItem{
                    Label("Top Games", systemImage: "dice")}
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
