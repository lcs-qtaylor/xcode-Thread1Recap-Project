//
//  PlayerList.swift
//  Card Game ios
//
//  Created by Quin Taylor on 2023-01-13.


import SwiftUI

struct PlayerList: View {
    @ObservedObject var store: TaskStore
    @State private var showingAddTask = false
    var body: some View {
        List(store.tasks) { task in
            TaskCell(task: task)
        }
        .navigationTitle("Cards")
        .toolbar {
            ToolbarItem(placement: .primaryAction) {
                Button("Add") {
                    
                    showingAddTask = true
                }
            }
        }
        .sheet(isPresented: $showingAddTask) {
            AddTask(store: store, showing: $showingAddTask)
        }
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
}
        
struct PlayerList_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            PlayerList(store: testStore)
        }
    }
}


