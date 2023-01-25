//
//  RectangleResult.swift
//  AreaAndPerimeterCalculator
//
//  Created by Quin Taylor on 2023-01-25.
//

import Foundation

struct RectangleResult: Identifiable {
    let id = UUID()
    let length: Double
    let width: Double
    let area: Double
    let perimeter: Double
}

let recResultForPreviews = RectangleResult(length: 0,
                               width: 0,
                               area: 0,
                               perimeter: 0)

