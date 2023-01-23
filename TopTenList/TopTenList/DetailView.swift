//
//  DetailView.swift
//  TopTenList
//
//  Created by Quin Taylor on 2023-01-21.
//

import SwiftUI

struct DetailView: View {
    let cityToShow: Cities
    var body: some View {
        
            VStack{
                Text(cityToShow.Country)
                Text(cityToShow.Population)
                Text(cityToShow.Language)
            }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(cityToShow: allCities)
    }
}
