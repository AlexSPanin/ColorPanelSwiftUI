//
//  ContentView.swift
//  ColorPanelSwiftUI
//
//  Created by Александр Панин on 19.02.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var valueRed = Double.random(in: SettingUI().range)
    @State private var valueGreen = Double.random(in: SettingUI().range)
    @State private var valueBlue = Double.random(in: SettingUI().range)
    @State private var valueOpacity = Double.random(in: SettingUI().range)
    
    private let setting = SettingUI()
    
    var body: some View {
        
        ZStack {
            Color(setting.colorBgrnd)
                .ignoresSafeArea()
            VStack {
                Spacer(minLength: 50)
                ColorPanelView(colorView: prepareColor())
                Spacer()
                SlidersPanelView(
                    valueRed: $valueRed,
                    valueGreen: $valueGreen,
                    valueBlue: $valueBlue,
                    valueOpacity: $valueOpacity
                    )
                Spacer(minLength: 200)
            }
        }
    }
    
    private func prepareColor() -> CGColor {
        return CGColor(
            red: valueRed / setting.maxValue,
            green: valueGreen / setting.maxValue,
            blue: valueBlue / setting.maxValue,
            alpha: valueOpacity / setting.maxValue
        )
    }
}

