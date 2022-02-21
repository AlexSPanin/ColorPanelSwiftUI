//
//  SliderColorView.swift
//  ColorPanelSwiftUI
//
//  Created by Александр Панин on 19.02.2022.
//

import SwiftUI

struct SliderColorView: View {
    
    var colorText: Color
    var colorTint: Color
    
    @Binding var value: Double
    @Binding var isEditingTextField: Bool
    
    @FocusState private var isActiveTextField: Bool
    
    @State private var valueInput = ""
    @State private var alertStatus: Bool = false
    @State private var isEditingSlider: Bool = false
    
    private let setting = SettingUI()
    
    var body: some View {
        
        HStack {
            Spacer()
            
            Text(String(format: "%.0f",value))
                .foregroundColor(isEditingSlider ? .black : colorText)
                .frame(width: setting.widthTextFrame, height: setting.heigthTextFrame, alignment:.trailing)
            
            Slider(value: $value, in: setting.range, step: 1, onEditingChanged: { editing in isEditingSlider = editing })
                .tint(colorTint)
            
            TextField(dispayedValue(), text: $valueInput)
                .focused($isActiveTextField)
                .onChange(of: isActiveTextField) { newValue in
                    if !newValue {
                        withAnimation {
                            checkSladerValue()
                        }
                    }
                }
                .onChange(of: isEditingTextField) { _ in
                    withAnimation {
                        checkSladerValue()
                    }
                }
            
                .textFieldStyle(.roundedBorder)
                .frame(width: setting.widthTextField, height: setting.heigthTextField, alignment: .center)
                .multilineTextAlignment(.center)
                .keyboardType(.numberPad)
                .alert("Wrong Format", isPresented: $alertStatus, actions: {}) {
                    Text("Input Number 0 ... 255")
                }
            Spacer()
        }
    }
    
    private func dispayedValue() -> String {
        return String(format: "%0.0f", value)
    }
    
    private func checkSladerValue() {
        if valueInput != "" {
            if let value = Double(valueInput), (setting.range).contains(value) {
                self.value = value
                valueInput = ""
                return
            }
            valueInput = ""
            alertStatus.toggle()
        }
    }
}
