//
//  AddFriendSnapApp.swift
//  AddFriendSnap
//
//  Created by Quin Taylor on 2022-11-18.
//

import SwiftUI

@main
struct AddFriendSnapApp: App {
    @StateObject private var store = TaskStore(tasks: testData)
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ContentView(store: store)
                
            }
        }
    }
}

