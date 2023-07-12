//
//  CustomGradient.swift
//  Hiking
//
//  Created by user on 12/07/2023.
//

import SwiftUI

struct CustomGradient: ButtonStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal,30)
            .background(
                configuration.isPressed ?
                LinearGradient(colors: [.customGrayMedium,.customGrayLight], startPoint: .top, endPoint: .bottom)
                :
                LinearGradient(colors: [.customGrayLight,.customGrayMedium], startPoint: .top, endPoint: .bottom)
            )
            .cornerRadius(40)
    }
    
}
