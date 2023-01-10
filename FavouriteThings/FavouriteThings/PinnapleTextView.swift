//
//  PinnapleTextView.swift
//  FavouriteThings
//
//  Created by Quin Taylor on 2022-10-28.
//

import SwiftUI


struct PinnapleTextView: View {
    var body: some View {
        HStack{
            Text("This Is A Pineapple, I Really Like Pineapples!")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.black)
                .multilineTextAlignment(.center)
                .padding()
        }
        
    
    }
}

struct PinnapleTextView_Previews: PreviewProvider {
    static var previews: some View {
        PinnapleTextView()
    }
}
