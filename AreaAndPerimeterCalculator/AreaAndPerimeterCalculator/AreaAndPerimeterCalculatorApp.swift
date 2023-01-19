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
                
                TempConvertC()
                    .tabItem {
                        Image(systemName: "f.circle.fill" )
                    }
                    .toolbar(.visible, for: .tabBar)
                
                    .toolbarBackground( Color.black, for: .tabBar)
                    .tag(2)
                
                TempConvertF()
                    .tabItem {
                        Image(systemName: "c.circle.fill" )
                    }
                    .toolbar(.visible, for: .tabBar)
                
                    .toolbarBackground( Color.black, for: .tabBar)
                    .tag(3)
            }
            
        }
    }
}



