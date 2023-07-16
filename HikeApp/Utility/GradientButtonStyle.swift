//
//  GradientButtonStyle.swift
//  HikeApp
//
//  Created by Vinod Sagar on 15/07/23.
//

import Foundation
import SwiftUI

struct GradientButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal, 30)
            .background(
                // Conditional statement with nil coalescing
                // Condition ? A : B
                configuration.isPressed ?
                // A: When User presses the button
                LinearGradient(colors: [.customGrayMedium, .customGrayLight], startPoint: .top, endPoint: .bottom)
                :
                // B: When the button is not pressed
                LinearGradient(colors: [.customGrayLight, .customGrayMedium], startPoint: .top, endPoint: .bottom))
            .cornerRadius(40)
    }
}
