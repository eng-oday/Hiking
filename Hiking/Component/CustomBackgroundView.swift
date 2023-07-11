//
//  CustomBackgroundView.swift
//  Hiking
//
//  Created by 3rabApp-oday on 11/07/2023.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
        ZStack{
            // MARK:  DEPTH
            Color.customGreenDark
                .cornerRadius(40)
                .offset(y:15)
                
            // MARK: LIGHT
            Color.customGreenLight
                .cornerRadius(40)
                .offset(y:3)
                .opacity(0.85)
               
            // MARK: - 1. SURFACE
            LinearGradient(colors: [Color.customGreenLight,Color.customGreenMedium], startPoint: .top, endPoint: .bottom)
                .cornerRadius(40)

        }//:ZSTACK

    }
}

struct CustomBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        CustomBackgroundView()
            .padding()
    }
}
