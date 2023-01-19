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
                        Image(systemName: "rectangle" )
                    }
                    .toolbar(.visible, for: .tabBar)
                
                    .toolbarBackground( Color.black, for: .tabBar)
                    .tag(1)
                
                TempConvert()
                    .tabItem {
                        Image(systemName: "Degrees" )
                    }
                    .toolbar(.visible, for: .tabBar)
                
                    .toolbarBackground( Color.black, for: .tabBar)
                    .tag(2)
                
                
            }
            
        }
    }
}



