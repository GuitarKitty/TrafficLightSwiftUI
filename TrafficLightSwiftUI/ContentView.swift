//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Vyacheslav Efimenko on 27.03.2021.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - Main View
    var body: some View {
        VStack {
            VStack(spacing: 30) {
                redLight
                yellowLight
                greenLight
            }
            Button(action: {switchTraficLight()})
            {
                Text(buttonTitle)
                    .font(.title)
            }
        }
    }
    
    // MARK: - Private property
    @State private var redLight = CircleConfigure(
        color: .red,
        opacity: 0.5
    )
    @State private var yellowLight = CircleConfigure(
        color: .yellow,
        opacity: 0.5
    )
    @State private var greenLight = CircleConfigure(
        color: .green,
        opacity: 0.5
    )
    @State private var currentLight: Color = .green
    private let lightIsOn = 1.0
    private let lightIsOff = 0.5
    
    @State private var buttonTitle = "Start"
    
    // MARK: -  Private method
    private func switchTraficLight() {
        if buttonTitle == "Start" {
            buttonTitle = "Next"
        }
        switch currentLight {
        case .red:
            redLight.opacity = lightIsOff
            currentLight = .yellow
            yellowLight.opacity = lightIsOn
        case .yellow:
            yellowLight.opacity = lightIsOff
            currentLight = .green
            greenLight.opacity = lightIsOn
        case .green:
            greenLight.opacity = lightIsOff
            currentLight = .red
            redLight.opacity = lightIsOn
        default:
            break
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
