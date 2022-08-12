//
//  MainView.swift
//  SwiftUI-animations
//
//  Created by Anna Radoutska on 8/11/22.
//

import Foundation
import SwiftUI
import Combine

struct MainView<Router: Routing>: View where Router.Route == AppRoute {
    
    let router: Router?
    @State var activeNavigation: AppRoute?
    @ObservedObject private var viewModel = MainViewModel()
    @State var isActive: Bool = true
    @State var gameViewActive: Bool = false
    @State var interactiveNavigationViewActive: Bool = false
    @State var catFactViewActive: Bool = true
    
    
    init(router: Router) {
        self.router = router
    }
    
    init() {
        self.router = nil
    }
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Navigation")
                NavigationLink(isActive: $interactiveNavigationViewActive) {
                        router?.view(for: .interactiveAnimationView)
                } label: {
                    Text("Interactive Animation View")
                        .font(.system(size: 18, weight: .medium))
                        .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
                        .frame(maxWidth: .infinity, alignment: .center)
                }
                .onReceive(viewModel.$isAuth, perform: {
                    isAuth in
                    self.isActive = isAuth
                })
                
                NavigationLink(isActive: $gameViewActive) {
                    router?.view(for: .gameView)
                } label: {
                    Text("Game View")
                        .font(.system(size: 18, weight: .medium))
                        .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
                        .frame(maxWidth: .infinity, alignment: .center)
                }
                .onReceive(viewModel.$isAuth, perform: {
                    isAuth in
                    self.isActive = isAuth
                })
                
                NavigationLink(isActive: $catFactViewActive) {
                    router?.view(for: .catFactView)
                } label: {
                    Text("Cat Fact View")
                        .font(.system(size: 18, weight: .medium))
                        .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
                        .frame(maxWidth: .infinity, alignment: .center)
                }
                .onReceive(viewModel.$isAuth, perform: {
                    isAuth in
                    self.isActive = isAuth
                })
            }
        }
    }
}

#if DEBUG
#if targetEnvironment(simulator)
struct MainView_Previews: PreviewProvider {

    static var device = PreviewDevice(stringLiteral: "iPhone 13 Pro Max")
   let router: AppRouter = AppRouter()

   static var platform: PreviewPlatform? {
       return SwiftUI.PreviewPlatform.iOS
   }

   static var previews: some View {
       return MainView<AppRouter>()
   }
}
#endif
#endif
