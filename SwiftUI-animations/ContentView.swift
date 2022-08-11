//
//  ContentView.swift
//  SwiftUI-animations
//
//  Created by Anna Radoutska on 8/1/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var speed = 1.0
    
    @State private var isSpinning = false
    
    @State private var flag = true
    
    @State private var move = false
    @State private var swinging = false
    @State private var splash = false
    
    @State private var isRotating = false
    @State private var isHidden = false
    
    
    var body: some View {
        VStack() {
            
        }
        
    }


let gradientStart = Color(red: 239.0 / 255, green: 120.0 / 255, blue: 221.0 / 255)
let gradientEnd = Color(red: 239.0 / 255, green: 172.0 / 255, blue: 120.0 / 255)
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
