//
//  Utente.swift
//  T'APPost
//
//  Created by Luigi Minniti on 18/11/21.
//

import Foundation
// I livelli sono: Chiattillo, Scugnizzo, Sarracino, Cafone
struct Utente {
    var greetingsUnlocked : Bool
    var dailyLifeUnlocked: Bool
    var romanceUnlocked: Bool
    var dangerZoneUnlocked: Bool
    var progress: Int64
    var profilePic : String
    var userTitle: String
}

var ourUser = Utente(greetingsUnlocked: true, dailyLifeUnlocked: false, romanceUnlocked: false, dangerZoneUnlocked: false, progress: 0, profilePic: "chiattillo", userTitle: "Chiattillo")


