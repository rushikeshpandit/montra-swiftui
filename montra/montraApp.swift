//
//  montraApp.swift
//  montra
//
//  Created by Rushikesh Pandit on 08/10/23.
//

import SwiftUI

@main
struct MontraApp: App {
    var body: some Scene {
        WindowGroup {
            SplashScreen()
                .ignoresSafeArea(.all, edges: .all)
        }
    }
}
