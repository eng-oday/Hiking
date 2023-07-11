//
//  ContentView.swift
//  Hiking
//
//  Created by 3rabApp-oday on 11/07/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            CardView()
        } //:ZSTACK
        .frame(width: 320 , height: 570)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
