//
//  FactLoadingService.swift
//  SwiftUI-animations
//
//  Created by Anna Radoutska on 8/12/22.
//

import Foundation
import SwiftUI
import Combine

final class FactLoadingService {
    
    init() {
        
    }
    
    let url = URL(string: "https://catfact.ninja/fact")!
    
    func fetch(url: URL) -> AnyPublisher<Data, CatFactError> {
        let request = URLRequest(url: url)
        
        return URLSession.DataTaskPublisher(request: request, session: .shared)
            .tryMap { data, response in
                guard let httpResponse = response as? HTTPURLResponse, 200..<300 ~= httpResponse.statusCode else {
                    throw CatFactError.urlCreatingError
                }
                return data
            }
            .mapError { error in
                if let error = error as? CatFactError {
                    return error
                } else {
                    return CatFactError.noDataError
                }
            }
            .eraseToAnyPublisher()
    }
    
    func decode() -> AnyPublisher<CatFact, Error> {
        return fetch(url: url)
            .decode(type: CatFact.self, decoder: JSONDecoder())
            .receive(on: RunLoop.main)
            .eraseToAnyPublisher()
    }
    
    func loadingNewFact() -> AnyPublisher<CatFact, Error> {
        
        var urlRequest = URLRequest(url: url)
        
        
        return URLSession.shared.dataTaskPublisher(for: urlRequest)
            .tryMap({ (data, response) -> Data in
                if let response = response as? HTTPURLResponse,
                   (200..<300).contains(response.statusCode) == false {
                    throw CatFactError.noDataError
                }
                
                return data
            })
            .decode(type: CatFact.self, decoder: JSONDecoder())
            .print()
            .eraseToAnyPublisher()
        
        
        //
        //        let task = URLSession.shared.dataTask(with: url) { data, response, error in
        //            if let error = error {
        //                completion(.failure(error))
        //            }
        //
        //            if let response = response as? HTTPURLResponse, !(200...299).contains(response.statusCode) {
        //                completion(.failure(CatFactError.connectionError))
        //                return
        //            }
        //
        //            guard let data = data else {
        //                completion(.failure(CatFactError.noDataError))
        //                return
        //            }
        //
        //            do {
        //                let decoder = JSONDecoder()
        //                let result = try decoder.decode(CatFact.self, from: data)
        //                print(result)
        //                completion(.success(result))
        //            }
        //            catch {
        //                completion(.failure(CatFactError.decodingError))
        //            }
        //        }
        //        task.resume()
    }
    
    
}
