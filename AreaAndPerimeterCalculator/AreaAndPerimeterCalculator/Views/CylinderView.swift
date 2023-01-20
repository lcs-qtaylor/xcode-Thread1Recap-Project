//
//  CylinderView.swift
//  AreaAndPerimeterCalculator
//
//  Created by Quin Taylor on 2023-01-20.
//

import SwiftUI

struct CylinderView: View {
    
    let pie = Double.pi
    @State var height: Double = 0
    @State var radius: Double = 0
    @State var desiredPrecision: Double = 0
    var areaOfBase: Double {
        return pie*radius*radius}
    
    var areaOfLateralSurface: Double {
        return 2*pie*radius*height }
    
    var areaOfTotal: Double {
        return (2*pie*radius*height)+(2*pie*radius*radius) }
    
    var volume: Double{
        return pie*radius*radius*height}
    
    var body: some View {
        VStack(spacing: 5){
            ZStack{
                HStack{
                    
                    Image("")
                        .resizable()
                        .scaledToFit()
                        .frame(width:800,height:150)
                        .padding(.leading,500)
                }
                Text("Cylinder")
                    .font(.largeTitle)
                    .bold()
                    .padding(.top,25)
            }
            Text("Height")
                .font(.title2)
            
            HStack{
                Stepper("",
                        value: $height,
                        in: 0.0...100.0,
                        step: 1.0)
                .padding(.trailing, 140)
                Spacer()
            }
            //create Slider to change value of length and Width
            HStack{
                Slider(value: $height,
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
            Text("\(height.formatted(.number.precision(.fractionLength(Int(desiredPrecision)))))")
                .font(.title2)
            Text("Radius")
                .font(.title2)
            HStack{
                Stepper("",
                        value: $radius,
                        in: 0.0...100.0,
                        step: 1.0)
                .padding(.trailing, 140)
                Spacer()
            }
            HStack{
                Slider(value: $radius,
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
            Text("\(radius.formatted(.number.precision(.fractionLength(Int(desiredPrecision)))))")
                .font(.title2)
            
            //            Divider()
            
            VStack(spacing: 5){
                Spacer()
                HStack{
                    
                    Text("Area Of Base")
                        .padding(.leading, 10)
                    
                    Text("\(areaOfBase.formatted(.number.precision(.fractionLength(0))))")
                    
                    Spacer()
                    
                }
                .font(.title2)
                .border(.black,width:2)
                .bold()
                HStack{
                    Text("Area Of Lateral Surface")
                        .padding(.leading, 10)
                    
                    Text("\(areaOfLateralSurface.formatted(.number.precision(.fractionLength(Int(desiredPrecision)))))")
                    Spacer()
                }
                .font(.title2)
                .border(.black,width:2)
                .bold()
                HStack{
                    Text("Area Of Total")
                        .padding(.leading, 10)
                    Text("\(areaOfTotal.formatted(.number.precision(.fractionLength(Int(desiredPrecision)))))")
                    Spacer()
                }
                .font(.title2)
                .border(.black,width:2)
                .bold()
                HStack{
                    
                    Text("Volume")
                        .padding(.leading, 10)
                    Text("\(volume.formatted(.number.precision(.fractionLength(Int(desiredPrecision)))))")
                    Spacer()
                    
                }
                .font(.title2)
                .border(.black,width:2)
                .bold()
                
                
                HStack{
                    Group{
                        
                        Stepper("precision", value:$desiredPrecision, in: 0...6)
                        
                            .padding()
                    }
                    .font(.title2)
                    .border(.black,width:2)
                    .bold()
                }
            }
        }
    }
}
struct CylinderView_Previews: PreviewProvider {
    static var previews: some View {
        CylinderView()
    }
}
