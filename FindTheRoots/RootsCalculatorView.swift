//
//  RootsCalculatorView.swift
//  FindTheRoots
//
//  Created by Quin Taylor on 2023-01-24.
//

import SwiftUI

struct RootsCalculatorView: View {
    @State var a: Double = 0
    @State var b: Double = 0
    @State  var c: Double = 0
    //@State var desiredPrecision: Double = 0
    @State var priorResults: [Result] = []
    
    var result: String { let discriminant = b * b - 4 * a * c
        if discriminant < 0 { return "No Real Roots" } else {
            let x1 = (b * -1 - discriminant.squareRoot()) / (2 * a)
            let x2 = (b * -1 + discriminant.squareRoot()) / (2 * a)
            
            return "x ≈\(x1.formatted(.number.precision(.fractionLength(2)))) and x ≈ \(x2.formatted(.number.precision(.fractionLength(2))))"
        }
    }
    var body: some View {
        VStack( spacing: 15){
            Text("Find The Roots")
                .font(Font.custom("Times New Roman",
                                  size: 30.0,
                                  relativeTo: .body))
            
                
                        Image("FindTheRootsEquations")
                            .resizable()
                            .scaledToFit()
                            .frame(width:100, height: 100)
            
            
            HStack{
                VStack{
                    HStack{
                        
                        Text("A:")
                        Text("\(a.formatted(.number.precision(.fractionLength(Int(0)))))")
                        
                    }
                    
                    HStack{
                        Slider(value: $a,
                               in: -10.0...10.0,
                               label: {
                            Text("Opacity")
                        },
                               minimumValueLabel: {
                            Text("-10")
                        },
                               maximumValueLabel: {
                            Text("10")
                        })
                        .padding()
                    }
                }
                VStack{
                    HStack{
                        
                        Text("B:")
                        Text("\(b.formatted(.number.precision(.fractionLength(Int(0)))))")
                        
                    }
                    HStack{
                        Slider(value: $b,
                               in: -10.0...10.0,
                               label: {
                            Text("Opacity")
                        },
                               minimumValueLabel: {
                            Text("-10")
                        },
                               maximumValueLabel: {
                            Text("10")
                        })
                        .padding()
                    }
                }
                VStack{
                    HStack{
                        
                        Text("C:")
                        Text("\(c.formatted(.number.precision(.fractionLength(Int(0)))))")
                        
                    }
                    HStack{
                        Slider(value: $c,
                               in: -10.0...10.0,
                               label: {
                            Text("Opacity")
                        },
                               minimumValueLabel: {
                            Text("-10")
                        },
                               maximumValueLabel: {
                            Text("10")
                        })
                        .padding()
                    }
                    
                }
            }
            Text(result)
                .font(Font.custom("Times New Roman",
                                  size: 24.0,
                                  relativeTo: .body))
            
            Button(action: {
                let latestResult = Result (a: a,
                                           b: b,
                                           c: c,
                                           roots: result)
                
                priorResults.append(latestResult)
            }, label: {
                Text ("Save Result")
                
            })
            .buttonStyle(.bordered)
            .padding ()
            
            HStack {
                Text ("History")
                    .font (.title)
                    .fontWeight (.bold)
                    .padding(.trailing,200)
                
            }
            // The actual list of results
            
            List (priorResults.reversed()) { currentResult in
                HStack {
                    Spacer ( )
                    resultView(somePriorResult: currentResult)
                }
            }
        }
        
    }
    
}

struct RootsCalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        RootsCalculatorView()
    }
}
