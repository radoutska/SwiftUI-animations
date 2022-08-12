//
//  GrassParticle.swift
//  SwiftUI-animations
//
//  Created by Anna Radoutska on 8/2/22.
//

import Foundation
import SwiftUI

struct GrassParticle: Shape {
    
    func path(in rect: CGRect) -> Path {
        Path { path in
            let width = rect.size.width
            let height = rect.size.width
            path.move(to: CGPoint(x: width/2 + width/8,
                                  y: 0))
            path.addLines([
                CGPoint(x: 0, y: height),
                CGPoint(x: rect.width, y: height)
            ])
            path.addQuadCurve(to: CGPoint(x: width / 2,
                                          y: width/4),
                              control: CGPoint(x: 0,
                                               y: height/2))
            path.addQuadCurve(to: CGPoint(x: 0, y: height),
                              control: CGPoint(x: 0,
                                               y: height/2))
            path.closeSubpath()
        }
        
    }
    
}
