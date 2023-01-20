//
//  ChatViewTestApp.swift
//  ChatViewTest
//
//  Created by Quin Taylor on 2023-01-20.
//

import SwiftUI
import Firebase
@main
struct ChatViewTestApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
