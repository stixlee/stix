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
    
    init() {
        FirebaseApp.configure()
        print("*** Firebase configured")
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
