//
//  SwiftUI_animationsApp.swift
//  SwiftUI-animations
//
//  Created by Anna Radoutska on 8/1/22.
//

import SwiftUI

@main
struct SwiftUI_animationsApp: App {
    var body: some Scene {
        
        let appRouter = AppRouter()
        
        WindowGroup {
            MainView(router: appRouter)
        }
    }
}
