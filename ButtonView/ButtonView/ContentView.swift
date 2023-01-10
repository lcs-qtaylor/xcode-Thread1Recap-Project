//
//  ContentView.swift
//  ButtonView
//
//  Created by Quin Taylor on 2022-10-28.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        //button instense with closure
        VStack {
            Button("clickme",action:{
                
                print("hello world")
                
            })
            
            //button instance with trailing closure
            Button("clickme") {
                
                print("hello world")
                
            }
            
    //button instance with label view
            Button(action: {
                
                print("hello world")
                
            }, label: {
                
                HStack {
                    Image("audio")
                    .resizable()
                    .frame(width: 50.0, height: 50.0)
                    .scaledToFit()
                  
                }
                
            })
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
