//
//  MotionAnimation.swift
//  Hiking
//
//  Created by 3rabApp-oday on 18/07/2023.
//

import SwiftUI

struct MotionAnimation: View {
    
    @State private var randomCircle:Int = Int.random(in: 0...12)
    @State private var isAnimating:Bool = false
    
    
    //1 . RANDOM COORDINATE
    func randomCoordinate()->CGFloat {
        return CGFloat.random(in: 0...256)
    }
    
    //2 . RANDOM SIZE
    
    func randomSize()->CGFloat {
        return CGFloat(Int.random(in: 4...80))
    }
    
    //3 . RANDOM SCALE
    
    func randomScale()->CGFloat {
        return CGFloat(Double.random(in: 0.1...2.0))
    }
    
    //4. RANDOM SPEED
    func randomSpeed()->Double {
        return Double.random(in: 0.05...1.0)
    }
    
    //5. RANDOM DELAY
    func randomDelay()->Double {
        return Double.random(in: 0...2)
    }
    
    
    var body: some View {
        ZStack {
            
            ForEach(0...randomCircle, id: \.self) { item in
                
                Circle()
                    .foregroundColor(.white)
                    .opacity(0.25)
                    .frame(width: randomSize())
                    .position(x: randomCoordinate(), y: randomCoordinate())
                    .scaleEffect(isAnimating ? randomScale() : 1)
                    .onAppear {
                        withAnimation(
                            .interpolatingSpring(stiffness: 0.25, damping: 0.25)
                            .speed(randomSpeed())
                            .delay(randomDelay())
                        ) {
                        isAnimating = true
                        }
                    }
            }
            
            

        }
        .frame(width: 280, height: 280)
        .mask(Circle())
        .drawingGroup()
    }
}

struct MotionAnimation_Previews: PreviewProvider {
    static var previews: some View {
            MotionAnimation()
            .background(
               Circle()
                .fill(.teal)
            )
       
    }
}