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
                        Image(systemName: "rectangle.split.2x2.fill")
                        Text("Calculate")
                    }
                
                HistoryView(history: $history)
                    .tabItem {
                        Image(systemName: "clock.fill")
                        Text("History")
                    }
            }
        }
    }
}

