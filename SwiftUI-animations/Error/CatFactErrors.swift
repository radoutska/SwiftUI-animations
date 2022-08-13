//
//  CatFactErrors.swift
//  SwiftUI-animations
//
//  Created by Anna Radoutska on 8/12/22.
//

import Foundation

enum CatFactError: Error {

    case connectionError

    case noDataError

    case decodingError
    
    case urlCreatingError
    
    public var description: String {
           switch self {
           case .connectionError:
               return "Connection Error"
           case .decodingError:
               return "Decoding Error"
           case .noDataError:
               return "No data Error"
           case .urlCreatingError:
               return "Url Creating Error"
           }
       }
}
