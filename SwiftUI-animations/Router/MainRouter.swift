//
//  MainRouter.swift
//  SwiftUI-animations
//
//  Created by Anna Radoutska on 8/10/22.
//

import Foundation
import SwiftUI

typealias RouteType = Hashable & Identifiable & CaseIterable

protocol Routing {
    
  associatedtype Route
  associatedtype Body: View
 
  @ViewBuilder func view(for route: Route) -> Self.Body
}


struct AppRouter: Routing {
    
  func view(for route: AppRoute) -> some View {
    switch route {
    case .mainView:
        MainView(router: self)
    case .catFactView:
        CatFactView(router: self)
    case .interactiveAnimationView:
        InteractiveAnimationsView(router: self)
    case .gameView:
        GameView(router: self)
    }
  }
}
