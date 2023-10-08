//
//  MainView.swift
//  montra
//
//  Created by Rushikesh Pandit on 08/10/23.
//

import SwiftUI

struct OnboardingView: View {
    @State var currentOnboardingState: OnboardingStates = .one
    @State var title: String = ""
    @State var subTitle: String = ""
    
    @ViewBuilder func getImage(state: OnboardingStates) -> some View  {
        switch state {
            case .one:
                Image("intro_page_one")
            case .two:
                Image("intro_page_two")
            case .three:
                Image("intro_page_three")
        }
    }
    
    
    var body: some View {
        VStack {
            getImage(state: currentOnboardingState)
            
        }
        .frame(maxWidth: .infinity,
               maxHeight: .infinity,
               alignment: .center)
        .background(Color.white)
        
    }
}

#Preview {
    OnboardingView()
}
