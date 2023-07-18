//
//  CustomCircleView.swift
//  Hiking
//
//  Created by 3rabApp-oday on 11/07/2023.
//

import SwiftUI

struct CustomCircleView: View {
    
    @State private var isAnimating:Bool = false
    var body: some View {
        ZStack {
            Circle()
                .fill(
                    .linearGradient(colors: [.customIndigoMedium,.customSalmonLight]
                                    , startPoint: isAnimating ? .topLeading : .bottomLeading,
                                    endPoint: isAnimating ? .bottomTrailing : .topTrailing)
                )
                .onAppear {
                    withAnimation(.linear(duration: 3.0).repeatForever(autoreverses: true)) {
                        isAnimating.toggle()
                    }
                }
            
                MotionAnimation()
                
        }
        .frame(width: 256, height: 256)

    }
}

struct CustomCircleView_Previews: PreviewProvider {
    static var previews: some View {
        CustomCircleView()
    }
}
