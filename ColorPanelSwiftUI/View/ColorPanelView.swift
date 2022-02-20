//
//  ColorPanelView.swift
//  ColorPanelSwiftUI
//
//  Created by Александр Панин on 19.02.2022.
//

import SwiftUI

struct ColorPanelView: View {
    
    var colorView: CGColor
    
    private let setting = SettingUI()
    
    var body: some View {

        Color(colorView)
            .frame(width: setting.widthColorPanel, height: setting.heigthColorPanel, alignment: .center)
            .cornerRadius(15)
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(lineWidth: 2)
                    .foregroundColor(.black)
                    .shadow(color: .black, radius: 4, x: 4, y: 4)
            )
        Spacer()
    }
}
