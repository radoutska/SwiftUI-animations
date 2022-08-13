//
//  CatFactViewModel.swift
//  SwiftUI-animations
//
//  Created by Anna Radoutska on 8/12/22.
//

import Foundation
import SwiftUI
import Combine

class CatFactViewModel: ViewModel {
    
    @Published var fact: CatFact = CatFact()
    private var cancellables: [AnyCancellable] = []
    let networkService = FactLoadingService()
    
    init() {

    }
    
    func loadFact()  {
        cancellables.append(networkService.decode()
               .sink(receiveCompletion: { completion in
                   switch completion {
                   case .finished:
                       break
                   case .failure(let error):
                       print("Error: \(error.localizedDescription)")
                   }
        }, receiveValue: { (fact: CatFact) in
                   self.fact = fact
        }))
        
            
    
    }

}
