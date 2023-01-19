//
//  RectangleView.swift
//  AreaAndPerimeterCalculator
//
//  Created by Quin Taylor on 2023-01-19.
//

import SwiftUI

struct RectangleView: View {
    let length: Double = 7
    let width: Double = 5
    
    var area: Double {
        return 
    
}
    var body: some View {
        VStack(spacing: 15){
            HStack{
                Image("Rectangle")
                    .resizable()
                    .scaledToFit()
                    .frame(width:380)
                    
                Spacer()
                
            }
            Text("Length")
                .font(.title2)
                .bold()
            // use String interpulation to convert the Double data type to text (String)
            
            // \(variable)
            Text("\(Length)")
            
            Text("width")
                .font(.title2)
                .bold()
            
            Text("5.0")
            
            Text("Area")
                .font(.title2)
                .bold()
            
            Text("21.0")
           
            Spacer()
            
           
            
        }
    }
}

struct RectangleView_Previews: PreviewProvider {
    static var previews: some View {
        RectangleView()
    }
}
