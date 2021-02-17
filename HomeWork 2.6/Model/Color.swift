//
//  Color.swift
//  HomeWork 2.6
//
//  Created by Филипп Слабодецкий on 16.02.2021.
//

import UIKit

struct Color {
    
    var red: CGFloat = 1
    var green: CGFloat = 1
    var blue: CGFloat = 1
    var alpha: CGFloat = 1
    
    mutating func newValue(red: CGFloat, green: CGFloat, blue: CGFloat) {
        self.red = red
        self.green = green
        self.blue = blue
    }
}

