//
//  TextValue.swift
//  HomeWorkLesson3.2
//
//  Created by Олейник Богдан on 26.02.2022.
//

import SwiftUI

struct TextValue: View {
    
    let value: Double
    
    var body: some View {
        Text("\(lround(value))")
            .frame(width: 40, alignment: .leading)
            .foregroundColor(.white)
    }
}

struct TextValue_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
            TextValue(value: 100)
        }
    }
}
