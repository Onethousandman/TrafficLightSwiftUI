//
//  ButtonView.swift
//  TrafficLight
//
//  Created by Никита Тыщенко on 17.04.2024.
//

import SwiftUI

struct ButtonView: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.title)
                .foregroundStyle(.white)
                .frame(height: 50)
                .frame(width: 180)
                .background(.blue)
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color.white, lineWidth: 5))
        }
    }
}

#Preview {
    ButtonView(title: "START", action: {})
}
