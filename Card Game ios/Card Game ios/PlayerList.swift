//
//  PlayerList.swift
//  Card Game ios
//
//  Created by Quin Taylor on 2023-01-13.
//

import SwiftUI

struct PlayerList: View {
    var body: some View {
        List{
            
            NavigationLink(destination:{
                ContentView()
            }, label: {
               
                    Image (systemName: "Addperson")
                        .resizable()
                        .scaledToFill()
                        .frame (width: 50, height: 50, alignment:
                        .center)
                        .clipped()
                        .border(.black,width: 2)
                VStack(spacing: 1) {
                    Text("content")
                        .fontWeight(.black)
                    
                    Text(".")
                        .font(Font.custom("largeTitle", size: 10))
                        .padding(.trailing, 100)
                }
                
            })
           
           
            
            NavigationLink(destination:{
               PlayerOne()
            }, label: {
                Image (systemName: "Addperson")
                    .resizable()
                    .scaledToFill()
                    .frame (width: 50, height: 50, alignment:
                    .center)
                    .clipped()
                    .border(.black,width: 2)

                VStack(spacing: 1) {
                    Text("PlayerOne")
                        .fontWeight(.black)
                        
                    Text(".")
                        .font(Font.custom("largeTitle", size: 10))
                    
                }
                
            })
            
            NavigationLink(destination:{
                PlayerTwo()
            }, label: {
                Image (systemName: "Addperson")
                    .resizable()
                    .scaledToFill()
                    .frame (width: 50, height: 50, alignment:
                    .center)
                    .clipped()
                    .border(.black,width: 2)
                VStack(spacing: 1) {
                    Text("PlayerTwo")
                        .fontWeight(.black)
                      
                    Text(".")
                        .font(Font.custom("largeTitle", size: 10))
                       
                }
            })
            NavigationLink(destination:{
                PlayerThree()
            }, label: {
                Image (systemName: "Addperson")
                    .resizable()
                    .scaledToFill()
                    .frame (width: 50, height: 50, alignment:
                    .center)
                    .clipped()
                    .border(.black,width: 2)
                VStack(spacing: 1) {
                    Text("PlayerThree")
                        .fontWeight(.black)
                        
                    Text(".")
                        .font(Font.custom("largeTitle", size: 10))
                       
                }
            })
            
            NavigationLink(destination:{
               PlayerFour()
            }, label: {
                Image (systemName: "Addperson")
                    .resizable()
                    .scaledToFill()
                    .frame (width: 50, height: 50, alignment:
                    .center)
                    .clipped()
                    .border(.black,width: 2)
                VStack(spacing: 1) {
                    Text("PlayerFour")
                        .fontWeight(.black)
                        
                    Text(".")
                        .font(Font.custom("largeTitle", size: 10))
                        
                }
            })
            
            NavigationLink(destination:{
                PlayerFive()
            }, label: {
    
                Image (systemName: "Addperson")
                        .resizable()
                        .scaledToFill()
                        .frame (width: 50, height: 50, alignment:
                                .center)
                        .clipped()
                        .border(.black,width: 2)
                    VStack(spacing: 1) {
                        Text("PlayerFive")
                            .fontWeight(.black)
                            
                        Text(".")
                            .font(Font.custom("largeTitle", size: 10))
                            
                    }
        
            })
            
        }
        .navigationTitle("Player Cards")
        
    }
}

struct PlayerList_Previews: PreviewProvider {
    static var previews: some View {
        PlayerList()
    }
}

