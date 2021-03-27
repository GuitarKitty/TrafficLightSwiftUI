//
//  CircleConfigure.swift
//  TrafficLightSwiftUI
//
//  Created by Admin on 27.03.2021.
//

import SwiftUI

struct CircleConfigure: View {
    var color: Color
    var opacity: Double
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 200, height: 200)
            .opacity(opacity)
    }
}

struct CircleConfigure_Previews: PreviewProvider {
    static var previews: some View {
        CircleConfigure(color: .red, opacity: 1.0)
    }
}
