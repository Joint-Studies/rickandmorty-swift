//
//  HomeView.swift
//  rickandmorty-swift
//
//  Created by Rodrigo Silva on 21/09/24.
//
import SwiftUI

struct HomeView: View {
    @ObservedObject var charactersViewModel = CharactersViewModel()
    
    var body: some View {
        NavigationStack {
            List (charactersViewModel.characters?.results ?? []){character in
                HomeTileView(character: character)
            }
            .navigationTitle("Characters")
        }
        .onAppear {
            charactersViewModel.fetchCharacters()
        }
        
    }
    
}
