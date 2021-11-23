//
//  Utente.swift
//  T'APPost
//
//  Created by Luigi Minniti on 18/11/21.
//

import Foundation
import SwiftUI
// I livelli sono: Chiattillo, Scugnizzo, Sarracino, Cafone
class Utente : ObservableObject {
    var greetingsUnlocked : Bool
    var dailyLifeUnlocked: Bool
    var romanceUnlocked: Bool
    var dangerZoneUnlocked: Bool
    var progress: Int64
    var profilePic : String
    var userTitle: String
    
    init() {
        greetingsUnlocked = true
        dailyLifeUnlocked = false
        romanceUnlocked = false
        dangerZoneUnlocked = false
        progress = 0
        profilePic = "CHIATTILLO"
        userTitle = "Chiattillo"
    }
}



//func userProgress (chapter: Bool, title: String, badge: Double){
//
//
//}


//Variabile che converte progress in double e la divide per 100, così da ottenere un valore da 0.0 a 1.0 per la progressview
//var perc : Double = Double(ourUser.progress)/100.0


