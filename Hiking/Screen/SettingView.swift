//
//  SettingView.swift
//  Hiking
//
//  Created by 3rabApp-oday on 19/07/2023.
//

import SwiftUI

struct SettingView: View {
    var body: some View {
        List {
            
            // MARK:  SECTION : HEADER
            
            Section {
                HStack{
                    Spacer()
                    Image(systemName: "laurel.leading")
                        .font(.system(size: 80,weight: .black))
                    
                    VStack(spacing:-10) {
                        Text("Hike")
                            .font(.system(size: 60,weight: .black))
                        Text("Edditor Choice")
                            .fontWeight(.medium)
                    }
                    
                    Image(systemName: "laurel.trailing")
                        .font(.system(size: 80,weight: .black))
                    
                    Spacer()
                }
                
                .foregroundStyle(
                    LinearGradient(colors: [.customGreenLight,.customGreenMedium,.customGreenDark], startPoint: .top, endPoint: .bottom)
                )
                .padding(.top,8)
                
                VStack(spacing:8){
                    Text("Where can you find \nperfect tracks?")
                        .font(.title2)
                        .fontWeight(.heavy)
                    
                    Text("the hike which looks gorgeous in photos but is even better once you are acttually there . the hike that you hope to do again someday . \nfind the best day hikes in the app.")
                        .font(.footnote)
                        .italic()
                    
                    Text("Dust off the boots! it's time for a walk")
                        .fontWeight(.heavy)
                        .foregroundColor(.customGreenMedium)
                }
                .multilineTextAlignment(.center)
                .padding(.bottom,16)
                .frame(maxWidth: .infinity)
            }//:  HEADER

            // MARK:  SECTION : ICONS
            
            // MARK:  SECTION : ABOUT
            
            
        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
