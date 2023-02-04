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
    let stockPercent = [0.0...1000.0]
    @State var selectedPercent = 0.0
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
    
    var totalProfit: Double? {
        guard let investment = totalInvestment else {
            return nil
        }
        guard let Return = totalReturn else {
            return nil
        }
        
        let profit = Return - investment
        
        return profit
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
    var totalProfitFormatted: String {
        
        guard let total3 = totalProfit else {
            return "Cannot be calculated..."
        }
        
        
        return total3.formatted(.number.precision(.fractionLength(2)))
        
    }
    var body: some View {
        NavigationView {
            
            VStack(spacing: 5) {
                VStack{
                    HStack{
                        Group{
                            
                            HStack {
                                Spacer()
                                Text("Price")
                                
                            }
                            .font(.headline.smallCaps())
                            
                            HStack(spacing: 5){
                                Text("$")
                                
                                TextField("0.0", text: $buyStockPrice)
                                
                                
                            }
                            
                        }
                        
                        
                        Group {
                            HStack {
                                Text("Quantity")
                                
                            }
                            .font(.headline.smallCaps())
                            
                            HStack {
                                Text("#")
                                Text("\(Quantity.formatted(.number.precision(.fractionLength(Int(1)))))")
                                Spacer()
                            }
                        }
                        
                    }
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
                    
                    Group {
                        HStack{
                            Spacer()
                            Text("Investment")
                                .font(.headline.smallCaps())
                            Spacer()
                        }
                        .padding(.horizontal)
                        HStack{
                            Spacer()
                            Text("$")
                            
                            Text(totalInvestmentFormatted)
                            
                            Spacer()
                        }
                    }
                }
                
                Group {
                    
                    HStack {
                        Spacer()
                        Text("Gain / Loss")
                        Spacer()
                    }
                    .font(.headline.smallCaps())
                    .padding(.horizontal)
                    HStack {
                        Spacer()
                        Text("%")
                        Text("\(selectedPercent.formatted(.number.precision(.fractionLength(Int(1)))))")
                        Spacer()
                    }
                    .padding(.horizontal)
                    HStack{
                        Slider(value: $selectedPercent,
                               in: -100.0...100.0,
                               label: {
                            Text("Opacity")
                        },
                               minimumValueLabel: {
                            Text("-100.0")
                        },
                               maximumValueLabel: {
                            Text("100.0")
                        })
                        .padding()
                    }
                    HStack{
                        Stepper("",
                                value: $selectedPercent,
                                in: -100.0...100.0,
                                step: 1.0)
                        .padding(.trailing, 150)
                    }
                    
                }
                
                Group {
                    HStack{
                        Spacer()
                        Text("Return")
                            .font(.headline.smallCaps())
                        Spacer()
                    }
                    .padding(.horizontal)
                    HStack{
                        Spacer()
                        Text("$")
                        
                        Text(totalReturnFormatted)
                        
                        Spacer()
                    }
                }
                Group {
                    HStack{
                        Spacer()
                        Text("Profit")
                            .font(.headline.smallCaps())
                        Spacer()
                    }
                    .padding(.horizontal)
                    HStack{
                        Spacer()
                        Text("$")
                        
                        Text(totalProfitFormatted)
                        
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
                    guard let price = stockPrice else {
                        return
                    }
                    let priceFormatted = String ( price.formatted(.number.precision(.fractionLength(2))))
                    
                    let percent = String(selectedPercent)
                    
                    
                    let quantity = String(Quantity)
                    
                    
                    let priorResult = Result(buyStockPrice: priceFormatted,
                                             Quantity: quantity,
                                             selectedPercent: percent,
                                             Return: totalReturnFormatted,
                                             Profit: totalProfitFormatted)
                    
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
