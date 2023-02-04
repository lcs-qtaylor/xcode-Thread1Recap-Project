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
    @State var Return = ""
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
    var percent: Double? {
        
        guard let percentAsDouble = Double(stockPercent) else {
           
            return nil
        }
        return percentAsDouble
    }
    
    //
    var totalReturn: Double? {
        
        // Is the bill amount nil, or an actual numeric value?
        guard let amount = stockPrice else {
            return nil
        }
        
      
        let investment = amount * quantity!
        
        // Calculate bill total, including the tip
        let gain = investment * percent!
        
        // Return total bill
        return gain
    }
    
    
    //
    var totalReturnFormatted: String {
        

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
                        
                        TextField("0.0", text: $Quantity)
                        
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
                        Text("%")
                        
                        TextField("0.0", text: $stockPercent)
                        
                    }
                    .padding(.horizontal)
                    
                    
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
