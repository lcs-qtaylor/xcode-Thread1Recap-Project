//
//  DetailView.swift
//  Card Game ios
//
//  Created by Quin Taylor on 2023-01-13.
//

import SwiftUI

struct DetailView: View {
    let cardToShow: card
    var body: some View {
        ZStack{
            Image("card")
                .resizable()
                .frame(width:600,height: 700 )
            VStack(spacing: 2){
                HStack{
                    //Creature Name
                    Text(cardToShow.creatureName)
                        .font(Font.custom ("MarkerFelt-Wide", size: 20))
                        .fontWeight(.bold)
                        .padding()
                        Spacer()
                    ZStack{
                        Circle()
                            .foregroundColor(.gray)
                            .frame(width: 25)
                        //manaCost
                        Text(cardToShow.manaCost)
                            .font(Font.custom ("MarkerFelt-Wide", size: 17))
                    }
                    ZStack {
                        //manaType
                        Image(cardToShow.manaType)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 25, height: 25, alignment: .topLeading)
                            .padding(.trailing)
                    }
                    
                }
                //imageName
                .frame(width:320,height: 45)
                Image(cardToShow.imageName)
                    .resizable()
                    .frame(width:320,height: 275)
                   
                
                HStack{
                    
                    // rarity
                    Text(cardToShow.rarity)
                    Text("Creature")
                    Text("-")
                    //creature type
                    Text(cardToShow.creatureType)
                    
                    
                }
                .frame(width:320,height: 40)
                .font(Font.custom ("MarkerFelt-Wide", size: 15))
                .fontWeight(.bold)
                VStack{
                    // Description
                    HStack{
                        Text(cardToShow.description)
                            .font(Font.custom ("MarkerFelt-Wide", size: 15))
                            .fontWeight(.bold)
                            .padding(.leading)
                        Spacer()
                        
                    }
                    .padding(.top)
                    Spacer()
                }
                .frame(width:320,height: 150)
                HStack{
                    
                }
                //health and damage
                HStack{
                    Text(cardToShow.health)
                    Text("/")
                    Text(cardToShow.damage)
                    
                }
                
                .font(Font.custom ("MarkerFelt-Wide", size: 22))
                .padding(.leading, 245.0)
                .fontWeight(.bold)
                .frame(width:320,height: 55)
                
            }
            
        }
        .navigationTitle(cardToShow.navTitle)
    }
}

struct DetailView_Previews: PreviewProvider{
    static var previews: some View {
        NavigationView{
            DetailView(cardToShow: leviathon)
        }
    }
}

