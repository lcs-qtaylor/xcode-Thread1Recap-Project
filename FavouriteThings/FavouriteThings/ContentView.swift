//
//  ContentView.swift
//  FavouriteThings
//
//  Created by Quin Taylor on 2022-10-28.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Image(systemName:"pineapple")
                .resizable()
                .frame(width: 395.0, height: 900.0)
                .scaledToFit()
                .overlay {
                    Rectangle().stroke(.black, lineWidth: 5)
                .shadow(radius: 7)
                }
            
            HStack{
                Text("Pineapple")
                   // .font(Title)
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .padding()
                    //.fontWeight(bold)
                
                Text("This Is A Pineapple, I Really Like Pineapples!")
                //.font()
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .padding()
            }
        }
    }
        
        
        
        
        struct ContentView_Previews: PreviewProvider {
            static var previews: some View {
                ContentView()
            }
        }
    }

