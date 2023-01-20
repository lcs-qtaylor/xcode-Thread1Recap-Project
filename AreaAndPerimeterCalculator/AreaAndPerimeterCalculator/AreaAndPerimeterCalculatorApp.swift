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
                        Text("Rectangle")
                    }
                    .toolbar(.visible, for: .tabBar)
                
                    .toolbarBackground( Color.black, for: .tabBar)
                    .tag(1)
                
                CylinderView()
                    .tabItem {
                        Image(systemName: "circle.fill" )
                        Text("Cylinder")
                    }
                    .toolbar(.visible, for: .tabBar)
                
                    .toolbarBackground( Color.black, for: .tabBar)
                    .tag(2)
                TempConvertC()
                    .tabItem {
                        Image(systemName: "f.circle.fill" )
                        Text("F to C")
                    }
                    .toolbar(.visible, for: .tabBar)
                
                    .toolbarBackground( Color.black, for: .tabBar)
                    .tag(3)
                
                TempConvertF()
                    .tabItem {
                        Image(systemName: "c.circle.fill" )
                        Text("C to F")
                    }
                    .toolbar(.visible, for: .tabBar)
                
                    .toolbarBackground( Color.black, for: .tabBar)
                    .tag(4)
            }
            
        }
    }
}



