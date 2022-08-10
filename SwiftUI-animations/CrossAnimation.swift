//
//  CrossAnimation.swift
//  SwiftUI-animations
//
//  Created by Anna Radoutska on 8/9/22.
//

import SwiftUI

struct CrossAnimation: View {
    
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
}

struct CrossAnimation_Previews: PreviewProvider {
    static var previews: some View {
        CrossAnimation()
    }
}
