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
                .frame(width:650,height: 870 )
            VStack(spacing: 2){
                HStack{
                    //Creature Name
                    Text(cardToShow.creatureName)
                        .font(Font.custom ("MarkerFelt-Wide", size: 20))
                        .fontWeight(.bold)
                        .padding()
                    ZStack{
                        Circle()
                            .foregroundColor(.gray)
                            .frame(width: 35)
                        //manaCost
                        Text(cardToShow.manaCost)
                    }
                    ZStack {
                        Circle()
                            .frame(width: 35)
                            .foregroundColor(.gray)
                        //manaType
                        Image(cardToShow.manaType)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 35, height: 35, alignment: .topLeading)
                    }
                    
                }
                //imageName
                .frame(width:350,height: 45)
                .border(.black,width:3)
                Image(cardToShow.imageName)
                    .resizable()
                    .frame(width:350,height: 350)
                    .border(.black,width: 3)
                
                HStack{
                    
                    // rarity
                    Text(cardToShow.rarity)
                    // Nothing
                    Text("Creature")
                    Text("-")
                    //creature type
                    Text(cardToShow.creatureType)
                    
                    
                }
                .frame(width:350,height: 40)
                .border(.black,width:3)
                .font(Font.custom ("MarkerFelt-Wide", size: 20))
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
                .frame(width:350,height: 200)
                .border(.black,width: 3)
                HStack{
                    
                }
                //health and damage
                HStack{
                    Text(cardToShow.health)
                    Text("/")
                    Text(cardToShow.damage)
                    
                }
                
                .font(Font.custom ("MarkerFelt-Wide", size: 25))
                .padding(.leading, 265.0)
                .fontWeight(.bold)
                .frame(width:350,height: 55)
                
            }
            
        }
        .navigationTitle(cardToShow.navTitle)
        .font(Font.custom ("MarkerFelt-Wide", size: 25))
        
    }
}

struct DetailView_Previews: PreviewProvider{
    static var previews: some View {
        NavigationView{
            DetailView(cardToShow: leviathon)
        }
    }
}

