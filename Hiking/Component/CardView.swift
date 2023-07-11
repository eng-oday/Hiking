//
//  CardView.swift
//  Hiking
//
//  Created by 3rabApp-oday on 11/07/2023.
//

import SwiftUI

struct CardView: View {
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
                    Image("image-1")
                        .resizable()
                        .scaledToFit()
                }

            // MARK:  FOOTER
                Button {
                    print("the button random number pressed")
                } label: {
                    Text("Random")
                }
                
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
