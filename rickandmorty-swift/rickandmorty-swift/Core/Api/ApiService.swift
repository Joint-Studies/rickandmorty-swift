//
//  ApiService.swift
//  rickandmorty-swift
//
//  Created by Rodrigo Silva on 19/09/24.
//

import Foundation
import Alamofire

enum ApiEndpoint: String {
    case characters = "character"
    case episodes = "episode"
    case locations = "location"
}

class ApiService {
    private let baseUrl = "https://rickandmortyapi.com/api/"
    
    func request<T: Decodable>(endpoint: ApiEndpoint? = nil, fullURL: String? = nil, responseType: T.Type, completion: @escaping (Result<T, AFError>) -> Void) {
        
        let url = fullURL ?? "\(baseUrl)\(endpoint?.rawValue ?? "")"
        
        AF.request(url, method: .get)
            .validate()
            .responseDecodable(of: T.self) {
            response in
            completion(response.result)
        }
    }
    
}
