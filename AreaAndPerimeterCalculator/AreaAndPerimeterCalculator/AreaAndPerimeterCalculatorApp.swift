//
//  AreaAndPerimeterCalculatorApp.swift
//  AreaAndPerimeterCalculator
//
//  Created by Quin Taylor on 2023-01-19.
//

import SwiftUI

@main
struct AreaAndPerimeterCalculatorApp: App {
    var body: some Scene {
        
        WindowGroup {
            TabView{
                
                RectangleView()
                    .tabItem {
                        Image(systemName: "map" )
                    }
                    .toolbar(.visible, for: .tabBar)
                
                    .toolbarBackground( Color.black, for: .tabBar)
                    .tag(1)
                
                ContentView()
                    .tabItem {
                        Image(systemName: "bubble.right")
                    }
                
                    .toolbar(.visible, for: .tabBar)
                
                    .toolbarBackground( Color.black, for: .tabBar)
                
                    .tag(2)
                
                
                CalculatePerimeter()
                    .tabItem {
                        Image(systemName: "camera" )
                    }
                    .toolbar(.visible, for: .tabBar)
                
                    .toolbarBackground( Color.black, for: .tabBar)
                    .tag(3)
                
            }
            
        }
    }
}



