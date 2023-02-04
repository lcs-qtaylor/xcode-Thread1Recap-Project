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
    let stockPercent = [0...1000]
    @State var selectedPercent = 0
    @State var Quantity = 0.0
    @Binding var history: [Result]
    @State var desiredPrecision: Double = 0
    // MARK: Computed properties
    var stockPrice: Double? {
        
        guard let priceAsDouble = Double(buyStockPrice) else {
            
            return nil
        }
        return priceAsDouble
    }
    
    var quantity: Double {
        return Double(Quantity)
    }
    
    var totalInvestment: Double? {
        guard let amount = stockPrice else {
            return nil
        }
        let investment = amount * quantity
        
        return investment
    }
    var percent: Double {
        return Double(selectedPercent) / 100
    }
    
    var totalReturn: Double? {
        guard let investment = totalInvestment else {
            return nil
        }
        
        let gain = percent * investment
        
        let Return = gain + investment
        
        return Return
    }
    
    var totalReturnFormatted: String {
        
        guard let total = totalReturn else {
            return "Cannot be calculated..."
        }
        
        // It could be calculated, so format it nicely
        return total.formatted(.number.precision(.fractionLength(2)))
        
    }
    var totalInvestmentFormatted: String {
        
        guard let total2 = totalInvestment else {
            return "Cannot be calculated..."
        }
        
        // It could be calculated, so format it nicely
        return total2.formatted(.number.precision(.fractionLength(2)))
        
    }
    var body: some View {
        NavigationView {
            
            VStack(spacing: 5) {
                
                Group {
                    HStack {
                        Text("Stock Price")
                        Spacer()
                    }
                    .font(.headline.smallCaps())
                    .padding(.horizontal)
                    HStack(spacing: 5){
                        Text("$")
                        
                        TextField("0.0", text: $buyStockPrice)
                        
                    }
                    .padding(.horizontal)
                }
                Group {
                    HStack {
                        Text("Quantity")
                        Spacer()
                    }
                    .font(.headline.smallCaps())
                    .padding(.horizontal)
                    HStack {
                        Text("#")
                        Text("\(Quantity.formatted(.number.precision(.fractionLength(Int(1)))))")
                        Spacer()
                    }
                    .padding(.horizontal)
                    HStack{
                        Slider(value: $Quantity,
                               in: 0...100,
                               label: {
                            Text("Opacity")
                        },
                               minimumValueLabel: {
                            Text("0.0")
                        },
                               maximumValueLabel: {
                            Text("100.0")
                        })
                        .padding()
                    }
                    HStack{
                        Stepper("",
                                value: $Quantity,
                                in: 0.0...100.0,
                                step: 1.0)
                        .padding(.trailing, 150)
                    }
                    
                }
                Group {
                    HStack {
                        Text("Gain / Loss")
                        Spacer()
                    }
                    .font(.headline.smallCaps())
                    .padding(.horizontal)
                    HStack {
                        Text("#")
                        Text("\(selectedPercent.formatted(.number.precision(.fractionLength(Int(1)))))")
                        Spacer()
                    }
                    .padding(.horizontal)
                    HStack{
                        Slider(value: $stockPercent,
                               in: 0...100,
                               label: {
                            Text("Opacity")
                        },
                               minimumValueLabel: {
                            Text("0.0")
                        },
                               maximumValueLabel: {
                            Text("100.0")
                        })
                        .padding()
                    }
                    HStack{
                        Stepper("",
                                value: $selectedPercent,
                                in: 0.0...100.0,
                                step: 1.0)
                        .padding(.trailing, 150)
                    }
                    
                }
                
                Group {
                    HStack{
                        Text("Return")
                        Spacer()
                    }
                    .padding(.horizontal)
                    HStack{
                        Text("$")
                        
                        Text(totalReturnFormatted)
                        
                        Spacer()
                    }
                }
                Group{
                    
                    Stepper("precision", value:$desiredPrecision, in: 0...6)
                        .font(.title2)
                        .bold()
                        .padding()
                }
                
                Button(action: {
                    
                    // Create a string version of the bill amount
                    guard let amount = stockPrice else {
                        return
                    }
                    let amountFormatted = String( amount.formatted(.number.precision(.fractionLength(2))))
                    
                    // Create a string version of the percentage
                    let percentage = String(selectedPercent)
                    
                    // Create a string version of the people count
                    let quantity = String(Quantity)
                    
                    // Create the prior result, all put together into an instance of Result
                    let priorResult = Result(ProvidedStockPrice: amountFormatted,
                                             Shares: quantity,
                                             stockPercent: percentage,
                                             Return: totalReturnFormatted)
                    
                    // Save the prior result to the history
                    history.append(priorResult)
                    
                }, label: {
                    Text("Save")
                        .font(.headline.smallCaps())
                })
                .buttonStyle(.bordered)
                
                Spacer()
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
