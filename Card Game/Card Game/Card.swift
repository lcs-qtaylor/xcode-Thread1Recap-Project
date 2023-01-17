//
//  Card.swift
//  Card Game ios
//
//  Created by Quin Taylor on 2023-01-17.
//

import Foundation

struct card{
    let creatureName: String
    let imageName: String
    let health: String
    let damage: String
    let manaCost: String
    let manaType: String
    let creatureType: String
    let description: String
    let rarity: String
    let navTitle:String
}
let leviathon = card(creatureName: "Leviathon", imageName: "Leviathon", health: "3", damage: "5", manaCost: "4", manaType: "watersymbol", creatureType: "Sea Leviathon", description: "THis is a very dangerous beast of the sea.", rarity: "Legendary", navTitle: "Leviathon")

let Beast = card(creatureName: "Forest Giant", imageName: "Monster", health: "6", damage: "4", manaCost: "5", manaType: "watersymbol", creatureType: "Giant", description: "A very big and mean creature, they are hoarders and are very territorial.", rarity:"Epic", navTitle: "Beast")

let Pheonix = card(creatureName: "Blazed Pheonix", imageName: "Pheonix", health: "7", damage: "9", manaCost:"7", manaType: "Fire", creatureType: "Pheonix", description: "A firey demon seen flying through the deep plains", rarity: "Mythical", navTitle: "Pheonix")

//ZStack{
//    Image("card")
//        .resizable()
//        .frame(width:650,height: 870 )
//    VStack(spacing: 2){
//        HStack{
//            //Creature Name
//            Text(creatureName)
//                .font(Font.custom ("MarkerFelt-Wide", size: 20))
//                .fontWeight(.bold)
//                .padding()
//            ZStack{
//                Circle()
//                    .foregroundColor(.gray)
//                    .frame(width: 35)
//                //manaCost
//                Text(manaCost)
//            }
//            ZStack {
//                Circle()
//                    .frame(width: 35)
//                    .foregroundColor(.gray)
//                //manaType
//                Image(manaType)
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .aspectRatio(contentMode: .fill)
//                    .frame(width: 35, height: 35, alignment: .topLeading)
//            }
//
//        }
//        //imageName
//        .frame(width:350,height: 45)
//        .border(.black,width:3)
//        Image(imageName)
//            .resizable()
//            .frame(width:350,height: 350)
//            .border(.black,width: 3)
//
//        HStack{
//
//            // rarity
//            Text(rarity)
//            // Nothing
//            Text("Creature")
//            Text("-")
//            //creature type
//            Text(creatureType)
//
//
//        }
//        .frame(width:350,height: 40)
//        .border(.black,width:3)
//        .font(Font.custom ("MarkerFelt-Wide", size: 20))
//        .fontWeight(.bold)
//        VStack{
//            // Description
//            HStack{
//                Text(description)
//                    .font(Font.custom ("MarkerFelt-Wide", size: 15))
//                    .fontWeight(.bold)
//                    .padding(.leading)
//                Spacer()
//
//            }
//            .padding(.top)
//            Spacer()
//        }
//        .frame(width:350,height: 200)
//        .border(.black,width: 3)
//        HStack{
//
//        }
//        //health and damage
//        HStack{
//            Text(health)
//            Text("/")
//            Text(damage)
//
//        }
//
//        .font(Font.custom ("MarkerFelt-Wide", size: 25))
//        .padding(.leading, 265.0)
//        .fontWeight(.bold)
//        .frame(width:350,height: 55)
//
//    }
//
//}
//.navigationTitle(navTitle)
//.font(Font.custom ("MarkerFelt-Wide", size: 25))





