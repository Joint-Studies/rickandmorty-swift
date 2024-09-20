//
//  CharactersViewModel.swift
//  rickandmorty-swift
//
//  Created by Rodrigo Silva on 19/09/24.
//
import Foundation

class CharactersViewModel: ObservableObject {
    @Published var characters: CharacterResponse?
    
    let apiService = ApiService()

    func fetchCharacters() async {
        apiService.request(endpoint: .characters, responseType: CharacterResponse.self)  { result in
            switch result {
            case .success(let response):
                self.characters = response
            case .failure(let error):
                    print("Erro: \(error)")
            }
        }
    }
}
