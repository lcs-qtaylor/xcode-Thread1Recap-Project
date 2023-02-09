//
//  WelcomeView.swift
//  WillitosStockCalculator
//
//  Created by Quin Taylor on 2023-02-07.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        
        
        VStack{
            Text("Welcome to willito's Stock Calculator ")
                .font(.largeTitle)
                .bold()
                .padding()
            
        }
        .background(
            LinearGradient(gradient: Gradient(colors: [.green, .brown]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all))
        
    }
}


struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
