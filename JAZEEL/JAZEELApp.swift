//
//  JAZEELApp.swift
//  JAZEEL
//
//  Created by Rand AlMuhanna on 11/05/1444 AH.
//

import SwiftUI

import FirebaseCore
class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
  }
}

@main
struct JAZEELApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    var body: some Scene {
        WindowGroup {
            Splash()
        }
    }
}
