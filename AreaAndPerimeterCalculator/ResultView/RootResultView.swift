//
//  RootResultView.swift
//  AreaAndPerimeterCalculator
//
//  Created by Quin Taylor on 2023-01-25.
//

import SwiftUI

struct RootResultView: View {
    
    let somePriorResult: RootResult
    var body: some View {
        VStack(spacing: 10){

                //input values
                HStack{
                    HStack{
                        Text("A:")
                        Text("\(somePriorResult.a.formatted(.number.precision(.fractionLength(Int(0)))))")
                        
                    }
                    HStack{
                        Text("B:")
                        Text("\(somePriorResult.b.formatted(.number.precision(.fractionLength(Int(0)))))")
                        
                    }
                    HStack{
                        Text("C:")
                        Text("\(somePriorResult.c.formatted(.number.precision(.fractionLength(Int(0)))))")
                        
                    }
                }
                Text(somePriorResult.roots)
                    .font(Font.custom("Times New Roman",
                                      size: 24.0,
                                      relativeTo: .body))
            
        }
        .padding(.horizontal, 10)
        .padding(.vertical, 15)
        
    }
    }

struct RootResultView_Previews: PreviewProvider {
    static var previews: some View {
        RootResultView(somePriorResult: resultForPreviews )
    }
}
