//
//  GrassLandShape.swift
//  SwiftUI-animations
//
//  Created by Anna Radoutska on 8/2/22.
//

import Foundation
import SwiftUI
import Combine

struct GrassLandShape: View {
    
    var width: Double = 100
    var height: Double = 100
    
    let gradientStart = Color(red: 239.0 / 255, green: 120.0 / 255, blue: 221.0 / 255)
    let gradientEnd = Color(red: 239.0 / 255, green: 172.0 / 255, blue: 120.0 / 255)
    
    let grassView = HStack(alignment: .bottom, spacing: 2) {
        GrassParticle()
        GrassParticle()
        GrassParticle()
        GrassParticle()
        GrassParticle()
        GrassParticle()
        GrassParticle()
        GrassParticle()
        GrassParticle()
        GrassParticle()
    }
    
    init(width: Double) {
        self.width = width
    }
    
    var body: some View {
        
        grassView
            .foregroundColor(.green)
    }
}

struct GrassLandShape_Previews: PreviewProvider {
    static var previews: some View {
        GrassLandShape(width: 300)
    }
}

