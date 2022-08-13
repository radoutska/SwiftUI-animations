//
//  CatFact.swift
//  SwiftUI-animations
//
//  Created by Anna Radoutska on 8/12/22.
//

import Foundation
import SwiftUI
import Combine

struct CatFact: Codable, Equatable {
    
    var fact: String
    var length: Int
    
    init(){
        self.fact = ""
        self.length = 0
    }
}
