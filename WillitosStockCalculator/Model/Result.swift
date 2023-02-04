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

var exampleResultForPreviews = Result(buyStockPrice: "100.0", Quantity: "2.0", selectedPercent: "100.0", Return: "400.0", Profit: "200.0")

var historyForPreviews = [exampleResultForPreviews]
