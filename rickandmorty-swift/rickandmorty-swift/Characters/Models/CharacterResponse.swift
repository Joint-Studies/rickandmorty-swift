//
//  CharacterResponse.swift
//  rickandmorty-swift
//
//  Created by Rodrigo Silva on 19/09/24.
//
struct CharacterResponse: Codable {
    let info: InfoModel
    let results: [CharacterModel]
    
    enum CodingKeys: String, CodingKey {
        case info = "info"
        case results = "results"
    }
}
