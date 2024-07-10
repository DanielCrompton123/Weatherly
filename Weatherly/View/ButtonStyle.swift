//
//  ButtonStyle.swift
//  Weatherly
//
//  Created by Daniel Crompton on 09/07/2024.
//

import SwiftUI


struct PillButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .fontWeight(.bold)
            .textCase(.uppercase)
            .foregroundStyle(.white)
            .padding(.horizontal, 30)
            .frame(height: 60)
            .background {
                Capsule()
                    .fill(Color.violentIndulgence)
                    .opacity(configuration.isPressed ? 0.8 : 1)
            }
    }
}


struct FernButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .fontWeight(.bold)
            .textCase(.uppercase)
            .foregroundStyle(.fern)
            .padding(10)
            .background {
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color.fern)
                    .opacity(configuration.isPressed ? 0.2 : 0)
            }
        
    }
}
