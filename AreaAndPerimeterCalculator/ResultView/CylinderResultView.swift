//
//  CylinderResultView.swift
//  AreaAndPerimeterCalculator
//
//  Created by Quin Taylor on 2023-01-25.
//

import SwiftUI

struct CylinderResultView: View {
    let cylSomePriorResult: CylinderResult
    var body: some View {
        
                 VStack{

                         //input values
                         HStack{
                             HStack{
                                 Text("Length:")
                                 Text("\(cylSomePriorResult.hieght.formatted(.number.precision(.fractionLength(Int(0)))))")
                                 
                             }
                             HStack{
                                 Text("Width:")
                                 Text("\(cylSomePriorResult.radius.formatted(.number.precision(.fractionLength(Int(0)))))")
                                 
                             }
                             HStack{
                                 Text("Perimeter")
                                 Text("\(cylSomePriorResult.areaOfBase.formatted(.number.precision(.fractionLength(Int(0)))))")
                                 
                             }
                         }
                     HStack{
                         Text("Area Of lateral Surface:")
                         Text("\(cylSomePriorResult.areaOfLateralSurface.formatted(.number.precision(.fractionLength(Int(0)))))")
                         
                     }
                     HStack{
                         Text("Area Of Total:")
                         Text("\(cylSomePriorResult.areaOfTotal.formatted(.number.precision(.fractionLength(Int(0)))))")
                         
                     }
                     HStack{
                         Text("Volume:")
                         Text("\(cylSomePriorResult.volume.formatted(.number.precision(.fractionLength(Int(0)))))")
                         
                     }
                     
                 }
                 .padding(.horizontal, 10)
                 .padding(.vertical, 15)
                 
    }
}

struct CylinderResultView_Previews: PreviewProvider {
    static var previews: some View {
        CylinderResultView(cylSomePriorResult: cylResultForPreviews)
    }
}
