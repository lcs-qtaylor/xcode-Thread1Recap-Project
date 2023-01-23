//
//  ContentView.swift
//  TopTenList
//
//  Created by Quin Taylor on 2023-01-21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List(allCitites) {  in
            
            NavigationLink(destination:{
                DetailView(cityToShow: allCities)
            }, label: {
                Text(allCities.cityToShow)
                })
            
      }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
