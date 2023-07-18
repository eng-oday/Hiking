//
//  CardView.swift
//  Hiking
//
//  Created by 3rabApp-oday on 11/07/2023.
//

import SwiftUI

struct CardView: View {
    
    @State private var randomNumber:Int = 1
    @State private var imageNumber:Int = 1
    
    private func randomImage(){
        
        repeat {
            randomNumber = Int.random(in: 1...5)
        }while randomNumber == imageNumber
        
        imageNumber =  randomNumber
    }
    
    var body: some View {
        
        ZStack {
            // MARK:  CONTAINER
            CustomBackgroundView()
            
            VStack {
                
                // MARK:  HEADER
                VStack(alignment: .leading){
                    HStack {
                        Text("HIKING")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(
                                .linearGradient(colors: [.customGrayLight,.customGrayMedium], startPoint: .top, endPoint: .bottom)
                        )
                        Spacer()
                        
                        Button {
                            print("button was pressed")
                        } label: {
                            CustomButtonView()
                        }
                            
                    }
                    
                    Text("fun and enjoyable outdoor activity for friends and families")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.customGrayMedium)
                }//: HEADER
                .padding(.horizontal,30)
                
                // MARK:  BODY
                
                ZStack{
                    // :  CIRCLE
                    CustomCircleView()
                    
                    // :  CHARACTER
                    Image("image-\(randomNumber)")
                        .resizable()
                        .scaledToFit()
                        .animation(.easeOut(duration: 0.9), value: randomNumber)
                }

            // MARK:  FOOTER
                Button {
                    randomImage()
                } label: {
                    Text("Random Explore")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(
                            LinearGradient(colors: [.customGreenLight,.customGreenMedium], startPoint: .top, endPoint: .bottom)
                        )
                        .shadow(color: .black.opacity(0.25), radius: 0.25, x: 1, y: 2)
  
                }
                .buttonStyle(CustomGradient())
            }
        }//:ZSTACK
        .frame(width: 320, height: 570)

    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
            .padding()
    }
}
