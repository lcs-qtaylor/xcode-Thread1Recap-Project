//
//  RectangleView.swift
//  AreaAndPerimeterCalculator
//
//  Created by Quin Taylor on 2023-01-19.
//

import SwiftUI

struct RectangleView: View {
   @State var length: Double = 1
   @State var width: Double = 1
    
    var perimeter: Double {
        return length + width + length + width
    }
    var area: Double {
        return length * width
    
}
    //expressing the user interface
    var body: some View {
        VStack(spacing: 15){
        HStack{
            Image("Rectangle")
                .resizable()
                .scaledToFit()
                .frame(width:380,height:150)
        }
            Text("Length")
                .font(.title2)
                .bold()
            //create Slider to change value of length and Width
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
            // use String interpulation to convert the Double data type to text (String)
            
            // \(variable)
            Text("\(length)")
            
            Text("width")
                .font(.title2)
                .bold()
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
            Text("\(width)")
            VStack(spacing: 15){
                Text("Area")
                    .font(.title2)
                    .bold()
                
                Text("\(area)")
                
                            Text("Perimeter")
                                .font(.title2)
                                .bold()
                
                            Text("\(perimeter)")
                Spacer()
            }
            
           
            
        }
    }
}

struct RectangleView_Previews: PreviewProvider {
    static var previews: some View {
        RectangleView()
    }
}
