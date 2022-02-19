//
//  SliderColorView.swift
//  ColorPanelSwiftUI
//
//  Created by Александр Панин on 19.02.2022.
//

import SwiftUI

struct SliderColorView: View {
    @State private var value: Double = 10
    @State private var valueInput = ""
    @State private var colorText: Color = .red
    @State private var colorTint: Color = .red
    
    var body: some View {
        HStack {
            Text(String(format: "%.0f",value))
                .foregroundColor(colorText)
                .frame(width: 50, height: 20, alignment:.trailing)
            
            Slider(value: $value, in: 0...255, step: 1)
                .tint(colorTint)
            
            TextField(String(format: "%.0f",value), text: $valueInput)
                .frame(width: 50, height: 25, alignment: .trailing)
                .overlay(
                    RoundedRectangle(cornerRadius: 4)
                        .stroke(lineWidth: 2)
                        .foregroundColor(.black)
                )
                .padding()
        }
        .padding()
    }
}

struct SliderColorView_Previews: PreviewProvider {
    static var previews: some View {
        SliderColorView()
    }
}
