//
//  ContentView.swift
//  TrafficLight
//
//  Created by Никита Тыщенко on 16.04.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var buttonTitle = "START"
    @State private var currentLight = CurrentLight.red
    
    @State private var redLight = 0.3
    @State private var yellowLight = 0.3
    @State private var greenLight = 0.3
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                TrafficLightLogoView(color: .red, alpha: redLight)
                TrafficLightLogoView(color: .yellow, alpha: yellowLight)
                TrafficLightLogoView(color: .green, alpha: greenLight)
                
                Spacer()
                
                ButtonView(title: buttonTitle) {
                    buttonTitle = "NEXT"
                    startButtonPressed()
                }
                .padding(.bottom, 40)
            }
        }
    }
    
    private func startButtonPressed() {
        let lightIsOn = 1.0
        let lightIsOff = 0.3
        
        switch currentLight {
        case .red:
            greenLight = lightIsOff
            redLight = lightIsOn
            currentLight = .yellow
        case .yellow:
            redLight = lightIsOff
            yellowLight = lightIsOn
            currentLight = .green
        case .green:
            greenLight = lightIsOn
            yellowLight = lightIsOff
            currentLight = .red
        }
    }
}

// MARK: - CurrentLight
extension ContentView {
    private enum CurrentLight {
        case red, yellow, green
    }
}

#Preview {
    ContentView()
}

