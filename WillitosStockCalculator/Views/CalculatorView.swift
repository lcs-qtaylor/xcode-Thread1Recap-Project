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
    var stockPrice: Double? {
        
        guard let priceAsDouble = Double(buyStockPrice) else {
           
            return nil
        }
        return priceAsDouble
    }
    var quantity: Double? {
        
        guard let quantityAsDouble = Double(Quantity) else {
           
            return nil
        }
        return quantityAsDouble
    }
    //
    var totalReturn: Double? {
        
        // Is the bill amount nil, or an actual numeric value?
        guard let amount = stockPrice else {
            return nil
        }
        
        // Calculate the tip dollar amount
        let  = amount * quantity
        
        // Calculate bill total, including the tip
        let billTotal = amount + tipAmount
        
        // Return total bill
        return billTotal
    }
    
    
    //
    var totalReturnFormatted: String {
        
        // Could the total with tip be calculated?
        // Or did that fail because the bill amount input was nonsense?
        guard let total = totalReturn else {
            return "Cannot be calculated..."
        }
        
        // It could be calculated, so format it nicely
        return total.formatted(.number.precision(.fractionLength(2)))
        
    }
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
                            in: 0...100,
                            step: 1.0)
                    .padding(.trailing, 140)
                    Spacer()
                }
                HStack{
                    Slider(value: $stockPercent,
                           in: -100...100,
                           label: {
                        Text("Opacity")
                    },
                           minimumValueLabel: {
                        Text("-100")
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
