//
//  Sliders.swift
//  HomeWorkLesson3.2
//
//  Created by Олейник Богдан on 26.02.2022.
//

import SwiftUI

struct Sliders: View {
    @Binding var valueSlider: Double
    @State private var valueText = ""
    
    let color: Color
    
    var body: some View {
        HStack {
            TextValue(value: valueSlider)
            
            Slider(value: $valueSlider, in: 0...255, step: 1)
                .accentColor(color)
                .onChange(of: valueSlider) { newValue in
                    valueText = "\(lround(newValue))"
                }
            
            TextFields(textValue: $valueText, doubleValue: $valueSlider)
        }
    }
}

struct Sliders_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
            Sliders(valueSlider: .constant(50), color: .yellow)
        }
    }
}
