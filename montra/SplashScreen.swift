//
//  ContentView.swift
//  montra
//
//  Created by Rushikesh Pandit on 08/10/23.
//

import SwiftUI
import SVGView

struct SplashScreen: View {

    var body: some View {
        ZStack {
            HStack{
                VStack{
                    Image("launch_screen")
                        .scaledToFit()
                        .frame(width: 300,height: 200,alignment: .center)
                }
            }
        }
        .frame(maxWidth: .infinity,
               maxHeight: .infinity,
               alignment: .center)
        .background(.launchScreenBackground)
    }
}

#Preview {
    SplashScreen()
}
