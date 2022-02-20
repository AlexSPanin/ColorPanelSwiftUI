//
//  SlidersPanelView.swift
//  ColorPanelSwiftUI
//
//  Created by Александр Панин on 19.02.2022.
//

import SwiftUI

struct SlidersPanelView: View {
    
    @Binding var valueRed: Double
    @Binding var valueGreen: Double
    @Binding var valueBlue: Double
    @Binding var valueOpacity: Double
    
    @State private var isEditingTextField: Bool = false
    
    private let setting = SettingUI()
    
    var body: some View {
        
        VStack {
            SliderColorView(colorText: setting.colorText, colorTint: .red,
                            value: $valueRed, isEditingTextField: $isEditingTextField)
            
            SliderColorView(colorText: setting.colorText, colorTint: .green,
                            value: $valueGreen, isEditingTextField: $isEditingTextField)
            
            SliderColorView(colorText: setting.colorText, colorTint: .blue,
                            value: $valueBlue, isEditingTextField: $isEditingTextField)
            
            SliderColorView(colorText: setting.colorText, colorTint: .white,
                            value: $valueOpacity, isEditingTextField: $isEditingTextField)
        }
        .toolbar{
            ToolbarItemGroup(placement: .keyboard) {
                Spacer()
                Button("Done") { isEditingTextField.toggle() }
            }
        }
        .padding()
    }
}
