//
//  CylinderResult.swift
//  AreaAndPerimeterCalculator
//
//  Created by Quin Taylor on 2023-01-25.
//

import Foundation

struct CylinderResult: Identifiable {
    let id = UUID()
    let hieght: Double
    let radius: Double
    let areaOfBase: Double
    let areaOfLateralSurface: Double
    let areaOfTotal: Double
    let volume: Double
}

let cylResultForPreviews = CylinderResult(hieght: 0,
                                           radius: 0,
                                           areaOfBase: 0,
                                           areaOfLateralSurface: 0,
                                           areaOfTotal: 0,
                                           volume: 0)
