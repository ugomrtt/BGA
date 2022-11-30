//
//  GameCell.swift
//  BGADream
//
//  Created by Ugo Mariotto on 30/11/2022.
//

import SwiftUI

struct GameCell: View {
    var game: Game
        
    var body: some View {
        HStack(){
            
            if let url = game.imageURL{
                GameImage(gameURL: url).frame(width: 100)
            }
            
            VStack(alignment: .leading){
                HStack{
                    Text(game.name).font(.title2).lineLimit(1)
                    
                    Spacer()
                    
                Text(game.descriptionPreview).lineLimit(4)
            }
            .frame(width: 190)
            }
        }
    }
}
