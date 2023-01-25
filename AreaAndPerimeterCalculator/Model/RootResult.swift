//
//  RootResult.swift
//  AreaAndPerimeterCalculator
//
//  Created by Quin Taylor on 2023-01-25.
//

import Foundation

struct RootResult: Identifiable {
    let id = UUID()
    let a: Double
    let b: Double
    let c: Double
    let roots: String
}

let resultForPreviews = RootResult(a: 0,
                               b: 0,
                               c: 0,
                               roots: "x ≈ NaN and × ≈ NaN")

