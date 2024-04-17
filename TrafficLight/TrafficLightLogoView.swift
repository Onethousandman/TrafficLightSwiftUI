//
//  TrafficLightView.swift
//  TrafficLight
//
//  Created by Никита Тыщенко on 16.04.2024.
//

import SwiftUI

struct TrafficLightLogoView: View {
    let color: Color
    let alpha: Double
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .opacity(alpha)
            .overlay(Circle().stroke(Color.white, lineWidth: 5))
            .frame(width: 100)
            .padding(10)
    }
}

#Preview {
    TrafficLightLogoView(color: .red, alpha: 1.0)
}
