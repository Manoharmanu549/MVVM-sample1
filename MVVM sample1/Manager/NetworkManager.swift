//
//  NetworkManager.swift
//  MVVM sample1
//
//  Created by Manohar on 10/2/23.
//

import Foundation

class NetworkManager {
    static func fetchData(urlString: String, completion: @escaping ([ProductModel]?, Error?) -> Void) {
        guard let url = URL(string: urlString) else {
            completion(nil, NetworkError.invalidURL)
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                completion(nil, error)
                return
            }
            
            if let data = data {
                do {
                    let decodedData = try JSONDecoder().decode([ProductModel].self, from: data)
                    completion(decodedData, nil)
                } catch {
                    completion(nil, error)
                }
            }
        }.resume()
    }
}

enum NetworkError: Error {
    case invalidURL
}
