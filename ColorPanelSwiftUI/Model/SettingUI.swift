//
//  SettingUI.swift
//  ColorPanelSwiftUI
//
//  Created by Александр Панин on 20.02.2022.
//

import SwiftUI

struct SettingUI {
    let minValue: Double = 0
    let maxValue: Double = 255
    var range: ClosedRange<Double> {
        minValue...maxValue
    }
    
    let colorBgrnd: CGColor = CGColor(gray: 0.5, alpha: 0.9)
    let colorText: Color = .white
    
    let opacity: Double = 1
    
    let heigthTextFrame: Double = 20
    let widthTextFrame: Double = 45
    
    let heigthTextField: Double = 20
    let widthTextField: Double = 45
    
    let heigthColorPanel: Double = 200
    var widthColorPanel: Double {
        heigthColorPanel * 3 / 2
    }
}
