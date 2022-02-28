//
//  textFields.swift
//  HomeWorkLesson3.2
//
//  Created by Олейник Богдан on 26.02.2022.
//

import SwiftUI

struct TextField: View {
    
    @State var alert = false
    
    @Binding var textValue: String
    @Binding var doubleValue: Double
    
    var body: some View {
        TextField("", text: $textValue) { _ in
            reviewValue()
        }
        .frame(width: 60, alignment: .trailing)
        .multilineTextAlignment(.trailing)
        .textFieldStyle(.roundedBorder)
        .alert("Wrong format", isPresented: $alert, actions: {}) {
            Text("Please enter correct value")
        }
    }
    
    private func reviewValue() {
        if let value = Int(textValue), (0...255).contains(value) {
            doubleValue = Double(value)
            return
        }
        alert.toggle()
        doubleValue = 0
        textValue = "0"
    }
}

struct TextFields_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
            TextField(textValue: .constant("100"), doubleValue: .constant(128.0))
        }
    }
}
