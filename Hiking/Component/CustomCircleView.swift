//
//  CustomCircleView.swift
//  Hiking
//
//  Created by 3rabApp-oday on 11/07/2023.
//

import SwiftUI

struct CustomCircleView: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(
                    .linearGradient(colors: [.customIndigoMedium,.customSalmonLight], startPoint: .topLeading, endPoint: .bottomTrailing)
                )
                .frame(width: 256, height: 256)
        }
    }
}

struct CustomCircleView_Previews: PreviewProvider {
    static var previews: some View {
        CustomCircleView()
    }
}
