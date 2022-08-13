//
//  MainViewModel.swift
//  SwiftUI-animations
//
//  Created by Anna Radoutska on 8/10/22.
//

import Foundation
import SwiftUI
import Combine

final class MainViewModel: ViewModel {
    
    
    @Published var navigateTo: AppRoute = .mainView
    @Published var isAuth: Bool = false
    private var cancellables: [AnyCancellable] = []

}
