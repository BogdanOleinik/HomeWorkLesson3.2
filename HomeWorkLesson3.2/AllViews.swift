//
//  AllViews.swift
//  HomeWorkLesson3.2
//
//  Created by Олейник Богдан on 28.02.2022.
//

import SwiftUI

struct AllViews: View {
    
    @State private var red = Double.random(in: 0...255)
    @State private var green = Double.random(in: 0...255)
    @State private var blue = Double.random(in: 0...255)
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.black.ignoresSafeArea()
                
                VStack(spacing: 50) {
                    ContentView(red: red, green: green, blue: blue)
                    
                    VStack {
                        Sliders(valueSlider: $red, color: .red)
                        Sliders(valueSlider: $green, color: .green)
                        Sliders(valueSlider: $blue, color: .blue)
                    }
                    Spacer()
                }
                .padding()
            }
        }
    }
}

struct AllViews_Previews: PreviewProvider {
    static var previews: some View {
        AllViews()
    }
}
