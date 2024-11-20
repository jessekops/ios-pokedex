//
//  Color.swift
//  student645147
//
//  Created by user271057 on 11/20/24.
//
import SwiftUI

import SwiftUI

extension Color {
    init(hex: String) {
        var hexSanitized = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        if hexSanitized.hasPrefix("#") {
            hexSanitized = String(hexSanitized.dropFirst())
        }

        if hexSanitized.count == 6 {
            let scanner = Scanner(string: hexSanitized)
            var rgb: UInt64 = 0
            scanner.scanHexInt64(&rgb)

            // Extract Red, Green, Blue values from the hex
            let r = Double((rgb >> 16) & 0xFF) / 255.0
            let g = Double((rgb >> 8) & 0xFF) / 255.0
            let b = Double(rgb & 0xFF) / 255.0
            self.init(red: r, green: g, blue: b)
        } else {
            self.init(.clear)
        }
    }
}
