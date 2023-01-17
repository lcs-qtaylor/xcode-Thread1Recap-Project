//
//  cardOne.swift
//  Card game testing
//
//  Created by Quin Taylor on 2023-01-16.
//

import SwiftUI

struct cardOne: View {
    var body: some View {
        ZStack{
            Image("card")
                .resizable()
                .frame(width:650,height: 870 )
            VStack(spacing: 1){
                HStack{
                    //Creature Name
                    Text("Evil Sea Monster")
                        .font(Font.custom ("MarkerFelt-Wide", size: 20))
                        .fontWeight(.bold)
                        .padding()
                    ZStack{
                        Circle()
                            .foregroundColor(.gray)
                            .frame(width: 35)
                        //manaCost
                        Text("3")
                    }
                    ZStack {
                        Circle()
                            .frame(width: 35)
                            .foregroundColor(.gray)
                        
                        Image("Fire")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 35, height: 35, alignment: .topLeading)
                    }
                    
                }
                .frame(width:350,height: 45)
                .border(.black,width:3)
                Image("Monster")
                    .resizable()
                    .frame(width:350,height: 350)
                    .border(.black,width: 3)
                
                HStack{
                    
                    // rarity
                    Text("Legendary")
                    // Nothing
                    Text("Creature")
                    Text("-")
                    //creature type
                    Text("Leviathon")
                    
                    
                }
                .frame(width:350,height: 40)
                .border(.black,width:3)
                .font(Font.custom ("MarkerFelt-Wide", size: 20))
                .fontWeight(.bold)
                VStack{
                    // Description
                    Text("this is a deadly creature")
                        .font(Font.custom ("MarkerFelt-Wide", size: 15))
                        .fontWeight(.bold)
                 
                }
                .frame(width:350,height: 220)
                .border(.black,width: 3)
                HStack{
                    
                }
                HStack{
                    Text("5")
                    Text("/")
                    Text("4")
                       
                }
               
                .font(Font.custom ("MarkerFelt-Wide", size: 25))
                .padding(.leading, 265.0)
                .fontWeight(.bold)
                .frame(width:350,height: 50)
                .border(.black,width: 3)
            }
            
        }
       
    }
   
}

struct cardOne_Previews: PreviewProvider {
    static var previews: some View {
        cardOne()
    }
}
