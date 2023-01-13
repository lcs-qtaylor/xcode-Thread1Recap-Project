//
//  CardGameApp.swift
//  CardGame
//
//  Created by Quin Taylor on 2023-01-12.
//

import SwiftUI

@main
struct CardGameApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                PlayerList()
            }
        }
    }
}
