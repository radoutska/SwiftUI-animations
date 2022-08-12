//
//  FlowerShape.swift
//  SwiftUI-animations
//
//  Created by Anna Radoutska on 8/2/22.
//

import Foundation
import SwiftUI

struct FlowerShape: View {
    
    var width: Double = 100
    var height: Double = 100
    
    let gradientStart = Color(red: 239.0 / 255, green: 120.0 / 255, blue: 221.0 / 255)
    let gradientEnd = Color(red: 239.0 / 255, green: 172.0 / 255, blue: 120.0 / 255)
    
    
    init(diametr: Double) {
        self.width = diametr
        self.height = diametr
    }
    
    var body: some View {
        GeometryReader { geometry in
            
            let center = CGPoint(x: width/2, y: height/2)
            
            ZStack() {
                PetalShape()
                    .frame(width: width/2,
                           height: height/2)
                    .foregroundColor(CustomColor.lightPurple)
                
                PetalShape()
                    .rotation(.degrees(-72))
                    .frame(width: width/2, height: height/2)
                    .padding(.leading, width/3*2)
                    .padding(.bottom, height/2)
                    .foregroundColor(CustomColor.darkPurple)
                
                PetalShape()
                    .rotation(.degrees(-144))
                    .frame(width: width/2, height: height/2)
                    .padding(.leading, width/5*2)
                    .padding(.bottom, height*1.25)
                    .foregroundColor(CustomColor.lightPink)
                
                
                PetalShape()
                    .rotation(.degrees(-216))
                    .frame(width: width/2, height: height/2)
                    .padding(.leading, -width/5*2)
                    .padding(.bottom,height*1.25)
                    .foregroundColor(.blue)
                
                PetalShape()
                    .rotation(.degrees(-288))
                    .frame(width: width/2, height: height/2)
                    .padding(.leading, -width*0.58)
                    .padding(.bottom, height/2)
                    .foregroundColor(.purple)
                
                Circle()
                    .frame(width: width/4, height: height/4, alignment: .center)
                    .padding(.bottom, height*0.7)
            }
        }
    }
}

struct FlowerShape_Previews: PreviewProvider {
    static var previews: some View {
        FlowerShape(diametr: 300)
    }
}

