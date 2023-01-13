//
//  PlayerList.swift
//  CardGame
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
                        .padding(.trailing, 140)
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
                        .padding(.trailing, 140)
                    Text(".")
                        .font(Font.custom("largeTitle", size: 10))
                        .padding(.trailing, 100)
                    
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
                        .padding(.trailing, 100)
                    Text(".")
                        .font(Font.custom("largeTitle", size: 10))
                        .padding(.trailing, 20)
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
                        .padding(.trailing, 100)
                    Text(".")
                        .font(Font.custom("largeTitle", size: 10))
                        .padding(.trailing, 110)
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
                        .padding(.trailing, 160)
                    Text(".")
                        .font(Font.custom("largeTitle", size: 10))
                        .padding(.trailing, 100)
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
                            .padding(.trailing, 140)
                        Text(".")
                            .font(Font.custom("largeTitle", size: 10))
                            .padding(.trailing, 100)
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

