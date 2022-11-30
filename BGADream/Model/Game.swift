//
//  Game.swift
//  BGADream
//
//  Created by Ugo Mariotto on 30/11/2022.
//

import Foundation

struct Game {
    let id: String
    let name: String
    let imageURL: URL?
    let thumbUrl: URL?
    let descriptionPreview: String
}

extension Game: Identifiable{}

extension Game: Codable{
    private enum CodingKeys: String, CodingKey {
        case id
        case name
        case imageURL = "image_url"
        case thumbUrl = "thumb_url"
        case descriptionPreview = "description_preview"
    }
}

struct GamesResponse: Codable{
    let games: [Game]
}
