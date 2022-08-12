//
//  FirstViewModel.swift
//  SwiftUI-animations
//
//  Created by Anna Radoutska on 8/11/22.
//

import Foundation
import SwiftUI
import Combine

class FirstViewModel: ViewModel {
    
    @Published var navigateTo: AppRoute = .mainView
    
    // MARK: - Life cycle
    init() {
        navigateTo = .mainView
    }
}
