//
//  ResultView.swift
//  WillitosStockCalculator
//
//  Created by Quin Taylor on 2023-02-03.
//

import SwiftUI

struct ResultView: View {
    let priorResult: Result
    var body: some View {
        HStack {
            
            VStack(alignment: .leading, spacing: 5) {
                
                Text("Price :")
                Divider()
                Text("Gain / Loss :")
                Divider()
                Text("Quantity (#) :")
                Divider()
                Text("Return :")
                Divider()
                Text("Profit :")
                Divider()
            }
            .font(.headline.smallCaps())
            Spacer()
           
            VStack(alignment: .trailing, spacing: 5) {

                
                Text("$ \(priorResult.buyStockPrice)")
                Divider()
                Text("\(priorResult.selectedPercent)%")
                Divider()
                Text(" \(priorResult.Quantity)")
                Divider()
                Text("$ \(priorResult.Return)")
                Divider()
                Text("$ \(priorResult.Profit)")
                Divider()
              
            }
            .font(.headline.smallCaps())
           

        }
        .padding(.horizontal, 10)
    }
}

struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView(priorResult: exampleOneResultForPreviews)
    }
}
