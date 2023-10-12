//
//  OnboardingView.swift
//  montra
//
//  Created by Rushikesh Pandit on 08/10/23.
//

import SwiftUI

struct OnboardingView: View {
    @State var currentOnboardingState: OnboardingStates = .one
    @State var title: String = ""
    @State var subTitle: String = ""
    
    @ViewBuilder func getImage() -> some View  {
        switch currentOnboardingState {
            case .one:
                Image("intro_page_one")
            case .two:
                Image("intro_page_two")
            case .three:
                Image("intro_page_three")
        }
    }
    
    @ViewBuilder func getTitleText() -> some View  {
        switch currentOnboardingState {
            case .one:
                Text("Gain total control of your money")
            case .two:
                Text("Know where your money goes")
            case .three:
                Text("Planning ahead")
        }
    }

    @ViewBuilder func getSubTitleText() -> some View  {
        switch currentOnboardingState {
            case .one:
                Text("Become your own money manager and make every cent count")
            case .two:
                Text("Track your transactions easily, with categories and financial report")
            case .three:
                Text("Setup your budget for each category so you are in control")
        }
    }
    
    var body: some View {
        VStack {
            getImage()
                .padding(.vertical, 20)
            getTitleText()
                .padding(.vertical, 20)
                .font(.custom("Inter-Bold", fixedSize: 32))
                .frame(alignment: .center)
                .multilineTextAlignment(.center)
            getSubTitleText()
                .padding(.vertical, 20)
                .font(.custom("Inter-Medium", fixedSize: 16))
                .frame(alignment: .center)
                .multilineTextAlignment(.center)
                .foregroundColor(.subTitleText)
        }
        .padding(.horizontal, 60)
        .frame(maxWidth: .infinity,
               maxHeight: .infinity,
               alignment: .center)
        .background(Color.white)
        
    }
}

#Preview {
    OnboardingView()
}
