//
//  OnboardingView.swift
//  montra
//
//  Created by Rushikesh Pandit on 08/10/23.
//

import SwiftUI

struct OnboardingView: View {
    @State var currentOnboardingState: OnboardingStates = .one
    @State var currentIndex: Int = 0
    @State var title: String = ""
    @State var subTitle: String = ""
    let timer = Timer.publish(every: 5, on: .main, in: .common).autoconnect()

    @ViewBuilder func getImage() -> some View {
        switch currentOnboardingState {
        case .one:
            Image("intro_page_one")
        case .two:
            Image("intro_page_two")
        case .three:
            Image("intro_page_three")
        }
    }

    @ViewBuilder func getTitleText() -> some View {
        switch currentOnboardingState {
        case .one:
            Text("Gain total control of your money")
        case .two:
            Text("Know where your money goes")
        case .three:
            Text("Planning ahead\n")
        }
    }

    @ViewBuilder func getSubTitleText() -> some View {
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
        NavigationView {
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
                PageIndicator(numPages: 3, currentPage: $currentIndex)
                    .padding(.vertical, 20)
                NavigationLink(destination: SignUpView()) {
                        Text("Sign Up")
                            .padding()
                            .frame(maxWidth: .infinity)
                            .foregroundColor(.white)
                            .background(Color.launchScreenBackground)
                            .cornerRadius(16)
                }
                .padding(.top, 40)
                .padding(.bottom, 20)
                Button {
                    print("Login")
                } label: {
                    Text("Login")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .foregroundColor(Color.launchScreenBackground)
                        .background(Color.primaryLight)
                        .cornerRadius(16)
                }
            }
            .onReceive(timer) { _ in
                if currentIndex != 2 {
                    currentIndex +=  1
                } else {
                    currentIndex = 0
                }
                switch currentOnboardingState {
                case .one:
                    currentOnboardingState = .two
                case .two:
                    currentOnboardingState = .three
                case .three:
                    currentOnboardingState = .one
                }
            }
            .padding(.horizontal, 60)
            .frame(maxWidth: .infinity,
                   maxHeight: .infinity,
                   alignment: .center)
        .background(Color.white)
        }

    }
}

#Preview {
    OnboardingView()
}
