//
//  PetalShape.swift
//  SwiftUI-animations
//
//  Created by Anna Radoutska on 8/2/22.
//

import Foundation
import SwiftUI

struct PetalShape: Shape {
    
    let gradientStart = Color(red: 239.0 / 255, green: 120.0 / 255, blue: 221.0 / 255)
    let gradientEnd = Color(red: 239.0 / 255, green: 172.0 / 255, blue: 120.0 / 255)
    
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: rect.size.width/2 + rect.size.width/8,
                                  y: 0))
            path.addLines([
                CGPoint(x: rect.width / 2 - rect.size.width/8, y: 0),
                CGPoint(x: rect.width / 2 + rect.size.width/8, y: 0)
            ])
            path.addQuadCurve(to: CGPoint(x: rect.size.width / 2,
                                          y: rect.size.height - rect.size.height/8),
                              control: CGPoint(x: rect.size.width,
                                               y: rect.size.height - rect.size.height/8))
            path.addQuadCurve(to: CGPoint(x: rect.width / 2 - rect.size.width/8,
                                          y: 0),
                              control: CGPoint(x: 0,
                                               y: rect.size.height - rect.size.height/8))
            path.closeSubpath()
        }
        
    }
    
}
