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
    let stockPercent = [-100.0...100.0]
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
            return "Return cannot be calculated..."
        }
        
        
        return total.formatted(.number.precision(.fractionLength(1)))
        
    }
    var totalInvestmentFormatted: String {
        
        guard let total2 = totalInvestment else {
            return "Investment cannot be calculated..."
        }
        
        
        return total2.formatted(.number.precision(.fractionLength(1)))
        
    }
    var totalProfitFormatted: String {
        
        guard let total3 = totalProfit else {
            return "Profit cannot be calculated"
        }
        
        
        return total3.formatted(.number.precision(.fractionLength(1)))
        
    }
    var body: some View {
        NavigationView {
            
            ZStack{
                VStack(spacing: 15) {
                    VStack{
                        
                        ZStack{
                            Rectangle()
                                .frame(width: 380, height: 60)
                                .cornerRadius(15)
                                .foregroundColor(.white)
                            
                            HStack {
                                Spacer()
                                    .padding()
                                Text("Price")
                                Text("$")
                                
                                TextField("0.0", text: $buyStockPrice)
                                
                            }
                            .font(.largeTitle)
                            
                            
                        }
                        
                        
                        ZStack {
                            Rectangle()
                                .frame(width: 380, height:150)
                                .cornerRadius(15)
                                .foregroundColor(.white)
                            VStack{
                                HStack {
                                    Spacer()
                                    
                                    Text("Quantity (#) :")
                                    
                                    Text("\(Quantity.formatted(.number.precision(.fractionLength(1))))")
                                    
                                    Spacer()
                                }
                                .font(.headline.smallCaps())
                                .bold()
                                
                                
                                
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
                                            step: 0.1)
                                    .padding(.trailing, 150)
                                    
                                    Button(action: {
                                     
                                    
                                    }, label: {
                                        Image(systemName: "")
                                    })
                                }
                            }
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
                    
                    Group{
                        ZStack {
                            Rectangle()
                                .frame(width: 380, height:150)
                                .cornerRadius(15)
                                .foregroundColor(.white)
                            VStack{
                                HStack {
                                    Spacer()
                                    Text("Gain / Loss :")
                                    
                                    
                                    
                                    
                                    
                                    Text("\(selectedPercent.formatted(.number.precision(.fractionLength(1))))")
                                    Text("%")
                                    Spacer()
                                }
                                .font(.headline.smallCaps())
                                .padding(.horizontal)
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
                                            step: 0.1)
                                    .padding(.trailing, 150)
                                }
                            }
                        }
                    }
                    Group {
                        HStack{
                            Spacer()
                            Text("Return :")
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
                            Text("Profit :")
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
                    
                    HStack{
                        Button(action: {
                            selectedPercent = 0.0
                            buyStockPrice = ""
                            Quantity = 0.0
                        }, label: {
                            Text("Reset")
                        })
                        
                        Button(action: {
                            guard let price = stockPrice else {
                                return
                            }
                            let priceFormatted = String ( price.formatted(.number.precision(.fractionLength(Int(desiredPrecision)))))
                            
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
                                
                        })
                       
                        
                        .padding()
                    }
                    .font(.headline.smallCaps())
                    .buttonStyle(.bordered)
                    Spacer()
                }
            }
            .background(
                LinearGradient(gradient: Gradient(colors: [.yellow, .green]), startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.all))
        }
        
        .navigationTitle("Stock Calculator")
    }
    
}

struct CalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        
        NavigationView {
            
            CalculatorView(history: Binding.constant(historyForPreviews))
            
        }
    }
}
