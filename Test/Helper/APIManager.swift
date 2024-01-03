//
//  APIManager.swift
//  Test
//
//  Created by avinash on 31/12/23.
//

import UIKit

// Singleton Desin Pattern

enum DataError :Error {
    case invalidResponse
    case invalidURL
    case invalidData
    case network(Error?)
}


typealias DataCompletion = (Result<Temperatures, DataError>) -> Void

final class DataManager {
    
    static let shared = DataManager()
    private init() {}
    
    func fetchProducts(baseUrl: String, completion: @escaping DataCompletion) {
        
        guard let url = URL(string: baseUrl)  else  { return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data , error == nil else {
                completion(.failure(.invalidData))
                return
            }

            guard let response = response as? HTTPURLResponse else {
                completion(.failure(.invalidResponse))
                return
            }

            guard let response = response as? HTTPURLResponse,
                  200 ... 299 ~= response.statusCode else {
                completion(.failure(.invalidResponse))
                return
            }
            
            do{
                let temperatures = try JSONDecoder().decode(Temperatures.self, from: data)
                completion(.success(temperatures))
                
            } catch {
                completion(.failure(.network(error)))
            }
        
        }.resume()
    }
    
}
