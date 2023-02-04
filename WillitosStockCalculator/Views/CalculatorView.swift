//
//  CalculatorView.swift
//  WillitosStockCalculator
//
//  Created by Quin Taylor on 2023-02-03.
//

import SwiftUI

struct CalculatorView: View {
    // MARK: Stored properties
    @State var buyStockPrice = ""
    @State var Quantity = ""
    @State var stockPercent = ""
    @Binding var history: [Result]
    // MARK: Computed properties
   
    
    var body: some View {
        NavigationView {
            
            VStack(spacing: 5) {
                
                Group {
                    HStack {
                        Text("Stock Price")
                        Spacer()
                    }
                    .padding(.horizontal)
                    HStack(spacing: 5){
                        Text("$")
                        
                        TextField("0.0", text: $buyStockPrice)
                        
                    }
                    .padding(.horizontal)
                }
                
                Group{
                    HStack {
                        Text("Quantity")
                        Spacer()
                    }
                    .padding(.horizontal)
                    HStack(spacing: 5){
                        Text("")
                        
                        TextField("0", text: $Quantity)
                        
                    }
                    .padding(.horizontal)
                    
                    
                }
                
                HStack{
                    Spacer()
                    Text("Gain/Loss")
                        .font(.title2)
                        .bold()
                    Text("\(stockPercent.formatted(.number.precision(.fractionLength(Int(0)))))")
                        .font(.title2)
                        .bold()
                    Stepper("",
                            value: $stockPercent,
                            in: 0.0...100.0,
                            step: 1.0)
                    .padding(.trailing, 140)
                    Spacer()
                }
                HStack{
                    Slider(value: $stockPercent,
                           in: -100.0...100.0,
                           label: {
                        Text("Opacity")
                    },
                           minimumValueLabel: {
                        Text("0")
                    },
                           maximumValueLabel: {
                        Text("100")
                    })
                    .padding()
                }
            }
            
        }
        .navigationTitle("Broker Calculator")
        
        
    }
}

struct CalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CalculatorView(history: Binding.constant(historyForPreviews))
        }
    }
}
