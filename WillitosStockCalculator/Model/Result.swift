//
//  Result.swift
//  WillitosStockCalculator
//
//  Created by Quin Taylor on 2023-02-03.
//

import Foundation

struct Result: Identifiable {
let id = UUID()
    let buyStockPrice: String
    let Quantity: String
    let selectedPercent: String
    let Return: String
    let Profit: String
    
}

var exampleOneResultForPreviews = Result(buyStockPrice: "100.0", Quantity: "2.0", selectedPercent: "100.0", Return: "400.0", Profit: "200.0")
var exampleTwoResultForPreviews = Result(buyStockPrice: "200.0", Quantity: "20.0", selectedPercent: "100.0", Return: "8000.0", Profit: "7600.0")
var historyForPreviews = [exampleOneResultForPreviews ,exampleTwoResultForPreviews]
