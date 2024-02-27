//
//  Colors.swift
//  Gamergrid
//
//  Created by Divyanshu Pabia on 27/02/24.
//

import SwiftUI

extension Color {
    
    // MARK: - Variables
    static let label: Color = Color(UIColor.label)
    static let background: Color = Color.black
    
    static var colorArray = [Color.red, Color.yellow, Color.purple, Color.green, Color.orange, Color.blue, Color.pink]

    
    // MARK: - Functions
    static func getRandomColor(remove: Bool = true) -> Color {
        let randomColor = Self.colorArray.shuffled().randomElement()!
        if (remove) {
            guard let ix = Self.colorArray.firstIndex(of: randomColor) else { return Color.label }
            Self.colorArray.remove(at: ix)
            
            if (colorArray.isEmpty) {
                colorArray = [Color.red, Color.yellow, Color.purple, Color.green, Color.orange, Color.blue, Color.pink]
            }
        }
        return randomColor
    }
}
