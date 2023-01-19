//
//  TempConvertF.swift
//  AreaAndPerimeterCalculator
//
//  Created by Quin Taylor on 2023-01-19.
//

import SwiftUI

struct TempConvertF: View {
    @State var celcius: Double = 0
    
    var computedFahrenheit: Double {
        return (celcius - 32) * 0.5556
    }
    var body: some View {
        
        VStack(spacing: 15) {
            Text("Convert")
                .font(.largeTitle)
                .bold()
            Text("Fahrenheit To Celcius")
                .font(.largeTitle)
                .bold()
            Image("")
            Spacer()
            Text("Fahrenheit")
                .font(.largeTitle)
                .bold()
            HStack{
                
                VStack{
                    Text("1")
                    Stepper("",
                            value: $celcius,
                            in: 0.0...100.0,
                            step: 1.0)
                }
                VStack{
                    Text("0.1")
                    Stepper("",
                            value: $celcius,
                            in: 0.0...100.0,
                            step: 0.1)
                }
                VStack{
                    Text("0.01")
                    Stepper("",
                            value: $celcius,
                            in: 0.0...100.0,
                            step: 0.01)
                }
                
            }
            .padding(.trailing, 20)
            HStack{
                Slider(value: $celcius,
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
                Text("\(celcius)")
                    .font(.title2)
                    .bold()
                Text("F")
            }
            VStack {
                
                Text("Celcius")
                    .font(.largeTitle)
                    .bold()
                HStack{
                    Text("\(computedFahrenheit)")
                        .font(.title2)
                        .bold()
                    Text("C")
                }
                Spacer()
            }
            
        }
    }
}

struct TempConvertF_Previews: PreviewProvider {
    static var previews: some View {
        TempConvertF()
    }
}
