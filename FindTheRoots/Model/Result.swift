//
//  Result.swift
//  FindTheRoots
//
//  Created by Quin Taylor on 2023-01-24.
//

import Foundation

struct Result: Identifiable {
    let id: UUID()
    let a: Double
    let b: Double
    let c: Double
    let roots: String
}

let resultForPreviews = Result(a: 0,
                               b: 0,
                               c: 0,
                               roots: "x ~ 2.00 and × ~ 4.00")
