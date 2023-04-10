//
//  StixApp.swift
//  Stix
//
//  Created by Michael Lee on 4/6/23.
//

import SwiftUI
import FirebaseCore


@main
struct StixApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    var body: some Scene {
        WindowGroup {
            LoginView()
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()
    print("*** Firebase configured")
    return true
  }
}

