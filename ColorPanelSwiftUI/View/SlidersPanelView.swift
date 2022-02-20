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
    
    var body: some View {
        
        VStack {
            SliderColorView(colorText: .black, colorTint: .red, value: $valueRed)
            SliderColorView(colorText: .black, colorTint: .green, value: $valueGreen)
            SliderColorView(colorText: .black, colorTint: .blue, value: $valueBlue)
        }
        .padding()
    }
}

//struct SlidersPanelView_Previews: PreviewProvider {
//    static var previews: some View {
//        SlidersPanelView()
//    }
//}
