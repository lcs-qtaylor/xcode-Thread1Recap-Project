//
//  Card.swift
//  Card Game ios
//
//  Created by Quin Taylor on 2023-01-17.
//

import Foundation


struct card: Identifiable{
    let id = UUID()
    let creatureName: String
    let imageName: String
    let health: String
    let damage: String
    let manaCost: String
    let manaType: String
    let creatureType: String
    let description: String
    let rarity: String
    let navTitle: String

}

let leviathon = card(creatureName: "Leviathon", imageName: "Leviathon", health: "3", damage: "5", manaCost: "4", manaType: "watersymbol", creatureType: "Sea Leviathon", description: "This is a very dangerous beast of the sea.", rarity: "Legendary", navTitle: "Leviathon")

let Beast = card(creatureName: "Forest Giant", imageName: "Monster", health: "6", damage: "4", manaCost: "10", manaType: "watersymbol", creatureType: "Giant", description: "A very big and mean creature, they are hoarders and are very territorial.", rarity:"Epic", navTitle: "Forest Giant")

let Pheonix = card(creatureName: "Blazed Phoenix", imageName: "Phoenix", health: "7", damage: "9", manaCost:"7", manaType: "Fire", creatureType: "Phoenix", description: "A firey demon seen flying through the deep plains", rarity: "Mythical", navTitle: "Blazed Phoenix")

let allCards = [leviathon, Beast, Pheonix]
