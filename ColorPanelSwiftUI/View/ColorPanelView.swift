//
//  ColorPanelView.swift
//  ColorPanelSwiftUI
//
//  Created by Александр Панин on 19.02.2022.
//

import SwiftUI

struct ColorPanelView: View {
    
    var colorView: CGColor
    
    var body: some View {

        Color(colorView)
            .frame(width: 300, height: 200, alignment: .center)
            .cornerRadius(15)
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(lineWidth: 2)
                    .foregroundColor(.black)
                    .shadow(color: .black, radius: 4, x: 4, y: 4)
            )
    }
    
//    private func prepareColor(red: Double, green: Double, blue: Double, maxValue: Double) -> Color {
//        let color = Color(.sRGB,
//                          red: prepareValue(value: red, maxValue: maxValue),
//                          green: prepareValue(value: green, maxValue: maxValue),
//                          blue: prepareValue(value: blue, maxValue: maxValue),
//                          opacity: 0.5)
//        return color
//    }
//
//    private func prepareValue(value: Double, maxValue: Double) -> Double {
//        let currentValue = value / maxValue
//        return currentValue
//    }
}

//struct ColorPanelView_Previews: PreviewProvider {
//    static var previews: some View {
//        ColorPanelView()
//    }
//}
