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
            Rectangle()
                .frame(width: 60, height:8, alignment: .center)
                .cornerRadius(5)
                .padding(.bottom, 11)
                .rotationEffect(.degrees(isRotating ? 25 : 0), anchor: .leading)

            Rectangle()
                .frame(width: 60, height:8, alignment: .center)
                .cornerRadius(5)
                .rotationEffect(.degrees(isRotating ? -25 : 0), anchor: .leading)
        }
        .onTapGesture {
            withAnimation (.interpolatingSpring(stiffness: 300, damping: 15)) {
                isRotating.toggle()
                isHidden.toggle()
            }
        }
    }
    
    let gradientStart = Color(red: 239.0 / 255, green: 120.0 / 255, blue: 221.0 / 255)
    let gradientEnd = Color(red: 239.0 / 255, green: 172.0 / 255, blue: 120.0 / 255)
    
    
    struct Bezier: Shape {
        func path(in rect: CGRect) -> Path
        {
            var path = Path()
            path.move(to: CGPoint(x: 100, y: 100))
            //path.addQuadCurve(to: CGPoint, control: CGPoint)
            return path
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
