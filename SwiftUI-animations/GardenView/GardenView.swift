//
//  GardenView.swift
//  SwiftUI-animations
//
//  Created by Anna Radoutska on 8/5/22.
//

import SwiftUI

import SwiftUI

struct GardenView: View {
    
    @State private var speed = 1.0
    
    @State private var isSpinning = false
    
    @State private var flag = true
    
    @State private var move = false
    @State private var swinging = false
    @State private var splash = false
    
    
    var body: some View {
        GeometryReader { geometry in
            HStack(alignment: .bottom ) {
                VStack(alignment: .center) {
                    ZStack(alignment: .bottomLeading) {
                        Rectangle()
                            .foregroundColor(CustomColor.lightBlue)
                        
                        FlowerShape(diametr: 50)
                            .padding(.top, 100)
                            .scaleEffect(0.6)
                            .rotationEffect(.degrees(swinging ? 5 : 0), anchor: swinging ? .bottomLeading : .bottomTrailing)
                            .animation(.easeInOut(duration: 3).repeatForever(), value: swinging)
                        ZStack() {
                
                        
                        GrassLandShape(width: 300)
                            .frame(width: geometry.size.width, height: 25, alignment: .bottom)
                            .padding(.bottom, 50)
                            .padding(.leading, 40)
                        GrassLandShape(width: 300)
                                .frame(width: geometry.size.width, height: 25, alignment: .bottom)
                                .padding(.bottom, 50)
                                .padding(.trailing, 20)
                            GrassLandShape(width: 300)
                                .frame(width: geometry.size.width, height: 25, alignment: .bottom)
                                .padding(.trailing, 70)
                                .padding(.bottom, 50)
                           
                        }
                        Rectangle()
                            .frame(width: geometry.size.width, height: geometry.size.height/15, alignment: .bottom)
                            .foregroundColor(.green)
                        
                    }
                }
            }
            .edgesIgnoringSafeArea(.all)
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

struct GardenView_Previews: PreviewProvider {
    static var previews: some View {
        GardenView()
    }
}
