//
//  Cities.swift
//  TopTenList
//
//  Created by Quin Taylor on 2023-01-21.
//

import Foundation

struct Cities {
    let Country: String
    let Population: String
    let Language: String
}

let hongKong = Cities(Country: "China", Population: "1", Language: "chines")
let dubai = Cities(Country: "United Arab Emirates", Population: "2", Language: "")
let rome = Cities(Country: "Italy", Population: "3", Language: "Italian")
let paris = Cities(Country: "France", Population: "4", Language: "French")
let london = Cities(Country: "United Kingdoms", Population: "5", Language: "English")
let bangkok = Cities(Country: "Thailand", Population: "6", Language: "")
let tokyo = Cities(Country: "Japan", Population: "7", Language: "Japanese")
let macau = Cities(Country: "China", Population: "8", Language: "Chinese")
let mexicoCity = Cities(Country: "Mexico", Population: "9", Language: "Spanish")
let losAngeles = Cities(Country: "United States", Population: "10", Language: "English")

    let allCities = [hongKong, dubai, rome, paris, london, bangkok, tokyo, macau, mexicoCity, losAngeles]
   
