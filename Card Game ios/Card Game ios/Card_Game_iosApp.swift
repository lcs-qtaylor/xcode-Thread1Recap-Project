//
//  Card_GameApp.swift
//  Card Game
//
//  Created by Quin Taylor on 2023-01-17.
//

import SwiftUI

@main
struct Card_GameiosApp: App {
    @StateObject private var store = TaskStore(tasks: testData)
    var body: some Scene {
        WindowGroup {
           NavigationView {
               PlayerList(store: store)
           }
        }
    }
}


