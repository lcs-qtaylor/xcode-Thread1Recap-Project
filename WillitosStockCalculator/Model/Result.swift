//
//  Result.swift
//  WillitosStockCalculator
//
//  Created by Quin Taylor on 2023-02-03.
//

import Foundation

struct Result: Identifiable {
let id = UUID()
    let ProvidedStockPrice: String
    let Shares: String
    let stockPercent: String
    let Return: String
    
}

var exampleResultForPreviews = Result(ProvidedStockPrice: "0.0", Shares: "0", stockPercent: "0", Return: "0.0")

var historyForPreviews = [exampleResultForPreviews]
