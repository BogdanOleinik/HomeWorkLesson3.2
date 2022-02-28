//
//  ContentView.swift
//  HomeWorkLesson3.2
//
//  Created by Олейник Богдан on 26.02.2022.
//

import SwiftUI

struct ContentView: View {
    
    let red: Double
    let green: Double
    let blue: Double
    
    var body: some View {
        Color(red: red / 255, green: green / 255, blue: blue / 255)
            .frame(height: 150)
            .cornerRadius(20)
            .overlay(RoundedRectangle(cornerRadius: 25)
                        .stroke(Color.white, lineWidth: 2)
            )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(red: 50, green: 100, blue: 150)
    }
}
