//
//  ContentView.swift
//  montra
//
//  Created by Rushikesh Pandit on 08/10/23.
//

import SwiftUI

struct SplashScreen: View {
    @State var isActive: Bool = false

    var body: some View {
        ZStack {
            if self.isActive{
                MainView()
            } else {
                HStack{
                    VStack{
                        Image("launch_screen")
                            .scaledToFit()
                            .frame(width: 300,height: 200,alignment: .center)
                    }
                }
            }
        }
        .frame(maxWidth: .infinity,
               maxHeight: .infinity,
               alignment: .center)
        .background(Color.launch_screen_background)
        .onAppear(perform: {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                self.isActive = true
            }
        })
    }
}

#Preview {
    SplashScreen()
}
