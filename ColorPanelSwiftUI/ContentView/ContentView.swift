//
//  ContentView.swift
//  ColorPanelSwiftUI
//
//  Created by Александр Панин on 19.02.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var valueRed = Double.random(in: 0...255)
    @State private var valueGreen = Double.random(in: 0...255)
    @State private var valueBlue = Double.random(in: 0...255)
    
    var body: some View {
        
        VStack {
        ColorPanelView(colorView: prepareColor())
            SlidersPanelView(valueRed: $valueRed, valueGreen: $valueGreen, valueBlue: $valueBlue)
        }
    }
    
    private func prepareColor() -> CGColor {
        return CGColor(red: valueRed / 255, green: valueGreen / 255, blue: valueBlue / 255, alpha: 0.5)
        }
}

