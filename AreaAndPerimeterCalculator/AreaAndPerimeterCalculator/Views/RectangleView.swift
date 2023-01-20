//
//  RectangleView.swift
//  AreaAndPerimeterCalculator
//
//  Created by Quin Taylor on 2023-01-19.
//

import SwiftUI

struct RectangleView: View {
    @State var length: Double = 0
    @State var width: Double = 0
    @State var desiredPrecision: Double = 0
    var perimeter: Double {
        return length + width + length + width
    }
    var area: Double {
        return length * width
        
    }
    //expressing the user interface
    var body: some View {
        VStack(spacing: 15){
            
            Text("Rectangle")
                .font(.largeTitle)
                .bold()
                .padding(.top,25)
            
            Text("Length")
                .font(.title2)
                .bold()
            HStack{
                Stepper("",
                        value: $length,
                        in: 0.0...100.0,
                        step: 1.0)
                .padding(.trailing, 140)
                Spacer()
            }
            //create Slider to change value of length and Width
            HStack{
                Slider(value: $length,
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
            
            // use String interpulation to convert the Double data type to text (String)
            
            // \(variable)
            Text("\(length.formatted(.number.precision(.fractionLength(Int(desiredPrecision)))))")
                .font(.title2)
                .bold()
            
            
            
            Text("width")
                .font(.title2)
                .bold()
            HStack{
                Stepper("",
                        value: $width,
                        in: 0.0...100.0,
                        step: 1.0)
                .padding(.trailing, 140)
                Spacer()
            }
            HStack{
                Slider(value: $width,
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
            Text("\(width.formatted(.number.precision(.fractionLength(Int(desiredPrecision)))))")
                .font(.title2)
                .bold()
            VStack(spacing: 15){
                Text("Area")
                    .font(.title2)
                    .bold()
                
                Text("\(area.formatted(.number.precision(.fractionLength(0))))")
                    .font(.title2)
                    .bold()
                Text("Perimeter")
                    .font(.title2)
                    .bold()
                
                Text("\(perimeter.formatted(.number.precision(.fractionLength(Int(desiredPrecision)))))")
                    .font(.title2)
                    .bold()
                Spacer()
                HStack{
                    Group{
                        
                        Stepper("precision", value:$desiredPrecision, in: 0...6)
                            .font(.title2)
                            .bold()
                            .padding()
                    }
                }
            }
        }
    }
}
struct RectangleView_Previews: PreviewProvider {
    static var previews: some View {
        RectangleView()
    }
}
