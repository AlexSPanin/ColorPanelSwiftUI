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
    
    @FocusState private var isInputActive: Bool
    @State private var valueInput = ""
    @State private var alertStatus = false
    
    
    
    var body: some View {
        
        HStack {
            Text(String(format: "%.0f",value))
                .foregroundColor(colorText)
                .frame(width: 50, height: 20, alignment:.trailing)
            
            Slider(value: $value, in: 0...255, step: 1)
                .tint(colorTint)
                .colorMultiply(colorTint)
            TextField(dispayedValue(), text: $valueInput, onEditingChanged: { isBegin in
                if !isBegin { checkSladerValue() }
            })
                .textFieldStyle(.roundedBorder)
                .frame(width: 50, height: 25, alignment: .center)
                .multilineTextAlignment(.center)
                .focused($isInputActive)
                .keyboardType(.asciiCapableNumberPad)
                .toolbar(content: {
                    ToolbarItemGroup(placement: .keyboard) {
                        Spacer()
                        Button("Done") { checkSladerValue() }
                        .alert("Wrong Format", isPresented: $alertStatus, actions: {}) {
                            Text("Input Number 0 ... 255")
                        }
                    }
                })
        }
        
        .padding()
    }


    private func dispayedValue() -> String {
        return String(format: "%0.0f", value)
    }
     
    private func checkSladerValue() {
        if let value = Double(valueInput) {
            if value >= 0 && value <= 255 {
                self.value = value
                isInputActive = false
                valueInput = ""
                return
            }
        }
        valueInput = ""
        alertStatus.toggle()
    }
}

//struct SliderColorView_Previews: PreviewProvider {
//    static var previews: some View {
//        
//        SliderColorView(value: 100, colorText: .red, colorTint: .blue)
//    }
//}
