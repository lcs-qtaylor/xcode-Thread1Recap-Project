//
//  RectangleResultView.swift
//  AreaAndPerimeterCalculator
//
//  Created by Quin Taylor on 2023-01-25.
//

import SwiftUI

struct RectangleResultView: View {
    let recSomePriorResult: RectangleResult
    var body: some View {
       
                VStack(spacing: 10){

                        //input values
                        HStack{
                            HStack{
                                Text("Length:")
                                Text("\(recSomePriorResult.length.formatted(.number.precision(.fractionLength(1))))")
                                
                            }
                            HStack{
                                Text("Width:")
                                Text("\(recSomePriorResult.width.formatted(.number.precision(.fractionLength(Int(0)))))")
                                
                            }
                            HStack{
                                Text("Perimeter:")
                                Text("\(recSomePriorResult.perimeter.formatted(.number.precision(.fractionLength(Int(0)))))")
                                
                            }
                        }
                    Text("Area:")
                        Text("\(recSomePriorResult.area.formatted(.number.precision(.fractionLength(Int(0)))))")
                          
                    
                }
                .padding(.horizontal, 10)
                .padding(.vertical, 15)
                
            }
            }

struct RectangleResultView_Previews: PreviewProvider {
    static var previews: some View {
        RectangleResultView(recSomePriorResult: recResultForPreviews)
    }
}
