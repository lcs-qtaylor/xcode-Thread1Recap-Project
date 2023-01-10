//
//  ContentView.swift
//  AddFriendSnap
//
//  Created by Quin Taylor on 2022-11-18.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
        NavigationView {
            
            ScrollView{
                
                List{
                    
                    
                    ForEach(listOfItem) {
                        currentItem in
                        NavigationLink(destination:
                                        chatview(textBoxes: currentItem.textBoxes)
                                       , label: {
                            DetailView(item: currentItem)
                        })
                        
                        
                        
                        
                    }
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                    
                    
                    .listStyle(.plain)
                }
                .padding()
                .frame(width: 460.0, height: 710.0)
                .padding()
                
                .background(Color.yellow)
            }.navigationBarTitle("Chat",displayMode: .inline)
            
                .toolbar {
                    ToolbarItemGroup(placement: .navigationBarTrailing) {
                        NavigationLink(destination: OptionView()) {
                            Image(systemName: "ellipsis.circle.fill").font(.title)
                                .foregroundColor(.gray)
                        }
                    }
                }
                .toolbar {
                    ToolbarItemGroup(placement: .navigationBarTrailing) {
                        NavigationLink(destination: AddFriend()) {
                            Image(systemName: "person.crop.circle.fill.badge.plus").font(.title)
                                .foregroundColor(.gray)
                        }
                    }
                }
                .toolbar {
                    ToolbarItemGroup(placement: .navigationBarLeading) {
                        NavigationLink(destination: SearchView()) {
                            Image(systemName: "magnifyingglass.circle.fill").font(.title)
                                .foregroundColor(.gray)
                        }
                    }
                }
                .toolbar {
                    ToolbarItemGroup(placement: .navigationBarLeading) {
                        NavigationLink(destination: ()) {
                            Image(systemName: "person.crop.circle").font(.title)
                                .foregroundColor(.gray)
                        }
                    }
                }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
