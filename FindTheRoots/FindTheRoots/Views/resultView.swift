//
//  resultView.swift
//  FindTheRoots
//
//  Created by Quin Taylor on 2023-01-24.
//

import SwiftUI

struct resultView: View {
    let somePriorResult: Result
    var body: some View {
        VStack(spacing: 10){
            
            //input values
            HStack{
                Text("input")
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

struct resultView_Previews: PreviewProvider {
    static var previews: some View {
        resultView(somePriorResult: resultForPreviews)
    }
}
