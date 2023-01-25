//
//  CylinderView.swift
//  AreaAndPerimeterCalculator
//
//  Created by Quin Taylor on 2023-01-20.
//

import SwiftUI

struct CylinderView: View {
    @State var cylPriorResults: [CylinderResult] = []
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
        VStack{
            
            
            Text("Cylinder")
                .font(.largeTitle)
                .bold()
            
            
            HStack{
                Spacer()
                Text("Height :")
                    .font(.title2)
                
                Text("\(height.formatted(.number.precision(.fractionLength(Int(desiredPrecision)))))")
                    .font(.title2)
                
                Stepper("",
                        value: $height,
                        in: 0.0...100.0,
                        step: 1.0)
                
                
                Spacer()
                    .padding(.leading, 100)
            }
            //create Slider to change value of length and Width
            
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
            
            // use String interpulation to convert the Double data type to text (String)
            
            // \(variable)
            
            HStack{
                Spacer()
                Text("Radius :")
                    .font(.title2)
                
                Text("\(radius.formatted(.number.precision(.fractionLength(Int(desiredPrecision)))))")
                    .font(.title2)
                
                Stepper("",
                        value: $radius,
                        in: 0.0...100.0,
                        step: 1.0)
                
                
                Spacer()
                    .padding(.leading, 100)
            }
            //create Slider to change value of length and Width
            
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
            VStack{
                HStack{
                    
                    Text("Area Of Base :")
                        .padding(.leading, 10)
                    
                    Text("\(areaOfBase.formatted(.number.precision(.fractionLength(0))))")
                    
                    Spacer()
                    
                }
                .font(.title2)
                .border(.black,width:2)
                .bold()
                HStack{
                    Text("Area Of Lateral Surface :")
                        .padding(.leading, 10)
                    
                    Text("\(areaOfLateralSurface.formatted(.number.precision(.fractionLength(Int(desiredPrecision)))))")
                    Spacer()
                }
                .font(.title2)
                .border(.black,width:2)
                .bold()
                HStack{
                    Text("Area Of Total :")
                        .padding(.leading, 10)
                    Text("\(areaOfTotal.formatted(.number.precision(.fractionLength(Int(desiredPrecision)))))")
                    Spacer()
                }
                .font(.title2)
                .border(.black,width:2)
                .bold()
                HStack{
                    
                    Text("Volume :")
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
            Button(action: {
                let latestResult = CylinderResult (hieght: height,
                                                   radius: radius,
                                                   areaOfBase: areaOfBase,
                                                   areaOfLateralSurface: areaOfLateralSurface,
                                                   areaOfTotal: areaOfTotal,
                                                   volume:volume)
                
                cylPriorResults.append(latestResult)
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
            List (cylPriorResults.reversed()) { currentResult in
                HStack {
                    Spacer ()
                    CylinderResultView(cylSomePriorResult: currentResult)
                }
            }
            .padding(.bottom, 170)
        }
    }
}

struct CylinderView_Previews: PreviewProvider {
    static var previews: some View {
        CylinderView()
    }
}
