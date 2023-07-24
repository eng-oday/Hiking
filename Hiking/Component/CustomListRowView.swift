//
//  CustomListRowView.swift
//  Hiking
//
//  Created by 3rabApp-oday on 24/07/2023.
//

import SwiftUI

struct CustomListRowView: View {
    
    @State var rowLabel:String
    @State var rowIcon:String
    @State var rowContent:String? = nil
    @State var rowColor:Color
    @State var rowLinkLabel:String? = nil
    @State var rowLinkDestination:String? = nil
    
    
    var body: some View {
        
        // . ADVANCED LABEL CONTENT
        LabeledContent {
            if rowContent != nil {
                Text(rowContent!)
                    .foregroundColor(.primary)
                    .fontWeight(.heavy)
            }else if rowLinkLabel != nil && rowLinkDestination != nil {
                Link(rowLinkLabel!, destination: URL(string: rowLinkDestination!)!)
                    .foregroundColor(.pink)
                    .fontWeight(.heavy)
            } else {
                /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
            }
        } label: {
            HStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 30,height: 30)
                        .foregroundColor(rowColor)
                    
                    Image(systemName: rowIcon)
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                }
                Text(rowLabel)
            }
            
        }
    }
}

struct CustomListRowView_Previews: PreviewProvider {
    static var previews: some View {
        List{
            CustomListRowView(
                rowLabel: "Website",
                rowIcon: "globe",
                rowContent: nil,
                rowColor: .pink,
                rowLinkLabel: "LinkedIn",
                rowLinkDestination: "https://www.linkedin.com/in/oday-mohammed-69843617a/"
                
            )
        }
    }
}
