//
//  ContentView.swift
//  SwiftUI-animations
//
//  Created by Anna Radoutska on 8/1/22.
//

import SwiftUI
import Combine
import Foundation

struct ContentView: View {
    
    @State private var speed = 1.0
    
    @State private var isSpinning = false
    
    @State private var flag = true
    
    @State private var move = false
    @State private var swinging = false
    @State private var splash = false
    
    @State private var isRotating = false
    @State private var isHidden = false
    @ObservedObject private var viewModel = MainViewModel()
    @State var isActive: Bool = true
    
    let router: AppRouter?
    @State var activeNavigation: AppRoute?

    
    var body: some View {
            NavigationLink("Gee", isActive: $isActive) {
                    Text("hello")
                Button {
                    print("gee pressed")
                } label: {
                    Text("Pressed")
                }

            } .navigationTitle("Hello")
                
        
    }


let gradientStart = Color(red: 239.0 / 255, green: 120.0 / 255, blue: 221.0 / 255)
let gradientEnd = Color(red: 239.0 / 255, green: 172.0 / 255, blue: 120.0 / 255)
}


#if DEBUG
#if targetEnvironment(simulator)
struct ContentView_Previews: PreviewProvider {

    static var device = PreviewDevice(stringLiteral: "iPhone 13 Pro Max")

   static var platform: PreviewPlatform? {
       return SwiftUI.PreviewPlatform.iOS
   }

   static var previews: some View {
       return ContentView(router: AppRouter())
   }
}
#endif
#endif

