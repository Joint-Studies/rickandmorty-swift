//
//  CharacterModel.swift
//  rickandmorty-swift
//
//  Created by Rodrigo Silva on 19/09/24.
//
struct CharacterModel: Codable, Identifiable{
    let id: Int
    let name: String
    let status: String
    let species: String
    let type: String
    let gender: String
    let origin: CharacterOriginModel?
    let location: CharacterLocationModel?
    let image: String
    let episode: [String]
    let url: String
    
    enum CodingKeys: String, CodingKey {
            case id, name, status, species, type, gender, image, episode, url
            case origin = "origin"
            case location = "location"
        }
}
