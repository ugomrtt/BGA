//
//  GameImage.swift
//  BGADream
//
//  Created by Ugo Mariotto on 30/11/2022.
//

import SwiftUI

struct GameImage: View {
    var gameURL: URL
    
    var body: some View {
        AsyncImage(url: gameURL){
            phase in
            
            switch phase {
            case .empty:
                ZStack{
                    Color.clear
                    ProgressView()
                }
            case .success(let image):
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            case .failure:
                EmptyView()
            @unknown default:
                Color.clear
            }
        }
    }
}
