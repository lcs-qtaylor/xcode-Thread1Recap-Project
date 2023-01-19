//
//  TempConvert.swift
//  AreaAndPerimeterCalculator
//
//  Created by Quin Taylor on 2023-01-19.
//

import SwiftUI

struct TempConvert: View {
    @State var Celcius: Double = 1
    @State var Fahrenheit: Double = 33.8
    
var celcius: Double {
        return fahrenheit + 32 * 1.8
    }
var fahrenheit: Double {
        return (celcius - 32) * 0.5556
    }
    var body: some View {
        
        Stepper("Celcius",
                value: $celcius,
                in: 5.0...30.0,
                step: 0.5)
        
        HStack {
            Spacer()
            Text("21.0 °C")
                .font(.largeTitle)
            Spacer()
        }
        Stepper("Fahrenheit",
                value: $fahrenheit,
                in: 5.0...30.0,
                step: 0.5)
        
        HStack {
            Spacer()
            Text("21.0 °C")
                .font(.largeTitle)
            Spacer()
        }
    }
}

struct TempConvert_Previews: PreviewProvider {
    static var previews: some View {
        TempConvert()
    }
}
