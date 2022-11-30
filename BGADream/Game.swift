//
//  Game.swift
//  BGADream
//
//  Created by Ugo Mariotto on 30/11/2022.
//

import Foundation

struct Game {
    let id: Int
    let name: String
    let imageURL: String
    let thumbUrl: String
    let description: String
}

extension Game: Codable{
    private enum CodingKeys: String, CodingKey {
        case id
        case name
        case imageURL = "image_url"
        case thumbUrl = "thumb_url"
        case description
    }
}

struct GamesResponse: Codable{
    let results: [Game]
}
