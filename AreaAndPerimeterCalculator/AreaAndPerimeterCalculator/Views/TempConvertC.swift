//
//  TempConvert.swift
//  AreaAndPerimeterCalculator
//
//  Created by Quin Taylor on 2023-01-19.
//

import SwiftUI

struct TempConvertC: View {
    @State var fahrenheit: Double = 0
    
    var computedCelcius: Double {
        return (fahrenheit * 1.8) + 32
    }
    var body: some View {
        
        VStack(spacing: 15) {
            Text("Convert")
                .font(.largeTitle)
                .bold()
            Text("Celcius To Fahrenheit")
                .font(.largeTitle)
                .bold()
            Image("")
            Spacer()
            Text("Celcius")
                .font(.largeTitle)
                .bold()
            HStack{
                VStack{
                    Text("1")
                    Stepper("",
                            value: $fahrenheit,
                            in: 0.0...100.0,
                            step: 1.0)
                }
                VStack{
                    Text("0.1")
                    Stepper("",
                            value: $fahrenheit,
                            in: 0.0...100.0,
                            step: 0.1)
                }
                VStack{
                    Text("0.01")
                    Stepper("",
                            value: $fahrenheit,
                            in: 0.0...100.0,
                            step: 0.01)
                }
            }
            .padding(.trailing, 20)
            HStack{
                Slider(value: $fahrenheit,
                       in: 0.0...100.0,
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
            HStack{
                Text("\(fahrenheit)")
                    .font(.title2)
                    .bold()
                Text("C")
            }
            VStack {
                
                
                Text("Fahrenheit")
                    .font(.largeTitle)
                    .bold()
                HStack{
                    Text("\(computedCelcius)")
                        .font(.title2)
                        .bold()
                    Text("F")
                }
                Spacer()
            }
            
        }
    }
}

struct TempConvertC_Previews: PreviewProvider {
    static var previews: some View {
        TempConvertC()
    }
}
