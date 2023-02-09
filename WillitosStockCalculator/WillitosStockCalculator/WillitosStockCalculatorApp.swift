//
//  WillitosStockCalculatorApp.swift
//  WillitosStockCalculator
//
//  Created by Quin Taylor on 2023-02-03.
//

import SwiftUI

@main
struct WillitosStockCalculatorApp: App {
    @State var history: [Result] = []
    var body: some Scene {
        WindowGroup {
            TabView {
               CalculatorView(history: $history)
                    .tabItem {
                        Image(systemName: "candybarphone")
                        Text("Calculate")
                    }
                
                HistoryView(history: $history)
                    .tabItem {
                        Image(systemName: "memorychip.fill")
                        Text("History")
                    }
            }
        }
    }
}

