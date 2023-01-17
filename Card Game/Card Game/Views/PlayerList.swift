//
//  PlayerList.swift
//  Card Game ios
//
//  Created by Quin Taylor on 2023-01-13.


import SwiftUI

struct PlayerList: View {
    var body: some View {
            List{
                
                NavigationLink(destination:{
                    DetailView(cardToShow: leviathon)
                }, label: {
                    Image("Leviathon")
                        .resizable()
                        .scaledToFill()
                        .frame (width: 50, height: 50, alignment:
                                .center)
                        .clipped()
                        .border(.black,width: 2)
                    
                    VStack(spacing: 1) {
                        Text("Leviathon")
                            .fontWeight(.black)
                            .font(Font.custom ("MarkerFelt-Wide", size: 35))
                        Text(".")
                            .font(Font.custom("largeTitle", size: 10))
                    }
                })
                NavigationLink(destination:{
                    DetailView(cardToShow: Beast)
                }, label: {
                    Image("Monster")
                        .resizable()
                        .scaledToFill()
                        .frame (width: 50, height: 50, alignment:
                                .center)
                        .clipped()
                        .border(.black,width: 2)
                    
                    VStack(spacing: 1) {
                        Text("Forest Giant")
                            .fontWeight(.black)
                            .font(Font.custom ("MarkerFelt-Wide", size: 35))
                        Text(".")
                            .font(Font.custom("largeTitle", size: 10))
                    }
                })
                NavigationLink(destination:{
                    DetailView(cardToShow: Pheonix)
                }, label: {
                    Image("Phoenix")
                        .resizable()
                        .scaledToFill()
                        .frame (width: 50, height: 50, alignment:
                                .center)
                        .clipped()
                        .border(.black,width: 2)
                    
                    VStack(spacing: 1) {
                        Text("Blazed Phoenix")
                            .fontWeight(.black)
                            .font(Font.custom ("MarkerFelt-Wide", size: 35))
                        Text(".")
                            .font(Font.custom("largeTitle", size: 10))
                    }
                })
            }
            .navigationTitle("Cards")
            
        }
        
    }
struct PlayerList_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            PlayerList()
        }
    }
}

