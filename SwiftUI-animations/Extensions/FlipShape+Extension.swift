//
//  FlipShape+Extension.swift
//  SwiftUI-animations
//
//  Created by Anna Radoutska on 8/2/22.
//

import Foundation
import SwiftUI
 
extension Shape {
    func flipped() -> ScaledShape<Self> {
        scale(x: -1, y: 1, anchor: .center)
    }
}
