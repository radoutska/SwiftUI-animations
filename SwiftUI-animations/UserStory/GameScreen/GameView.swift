//
//  GameView.swift
//  SwiftUI-animations
//
//  Created by Anna Radoutska on 8/12/22.
//

import SwiftUI

struct GameView<Router: Routing>: View where Router.Route == AppRoute {
    
    let router: Router?
    @State var activeNavigation: AppRoute?
    @ObservedObject private var viewModel = MainViewModel()
    @State var isActive: Bool = true
    
    init(router: Router) {
        self.router = router
    }
    
    init() {
        self.router = nil
    }
    
    var body: some View {
        Text("Game View")
    }
}

struct GameView_Previews: PreviewProvider {
    
    static var device = PreviewDevice(stringLiteral: "iPhone 13 Pro Max")
   let router: AppRouter = AppRouter()

   static var platform: PreviewPlatform? {
       return SwiftUI.PreviewPlatform.iOS
   }

   static var previews: some View {
       return GameView<AppRouter>()
   }
}
