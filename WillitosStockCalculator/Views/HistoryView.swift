//
//  HistoryView.swift
//  WillitosStockCalculator
//
//  Created by Quin Taylor on 2023-02-03.
//

import SwiftUI

struct HistoryView: View {
    @Binding var history: [Result]
    var body: some View {
        VStack {
            
            Text("Trade History")
                .font(.largeTitle)
                .bold()
                .padding()
            
            List(history.reversed()) { somePriorResult in
                ResultView(priorResult: somePriorResult)
            }
            
        }
        
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView(history: Binding.constant(historyForPreviews))
    }
}

