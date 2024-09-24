//
//  HomeTileView.swift
//  rickandmorty-swift
//
//  Created by Rodrigo Silva on 22/09/24.
//

import SwiftUI


enum Status {
    case alive
    case dead
    case unknown
    
    // Inicializador para converter String em Status
    init(from string: String) {
        switch string.lowercased() {
        case "alive":
            self = .alive
        case "dead":
            self = .dead
        default:
            self = .unknown
        }
    }
}

struct HomeTileView: View {
    let character: CharacterModel
    
    var body: some View {
        let status = Status(from: character.status)
        NavigationLink(destination: CharactersDetailView(url: character.url)) {
            HStack {
                VStack(alignment: .leading) {
                    Text(character.name)
                        .font(.headline)
                    HStack{
                        Circle()
                            .fill(statusColor(for: status))
                            .frame(width: 16, height: 16)
                        statusString(for: character.status)
                    }
                    
                }
                Spacer()
            }
            .foregroundColor(.blue)
        }
    }
    private func statusString(for status: String) -> Text{
        switch status {
        case "alive":
            return Text("Vivo")
        case "dead":
            return Text("Morto")
        default:
            return Text("Desconhecido")
        }
    }
    private func statusColor(for status: Status) -> Color {
        switch status {
        case .alive:
            return .green
        case .dead:
            return .red
        case .unknown:
            return .gray
        }
    }
}
