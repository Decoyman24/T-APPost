//
//  databaseQuiz.swift
//  T'APPost
//
//  Created by Rosa Cimmino on 20/11/21.
//

//file con tutte le domande e le risposte (corretet o meno) per ogni livello
import Foundation

struct Domandaquiz : Identifiable {
    let id = UUID()
    let categoria : String
    let domanda : String
    let question : String
    let rispCorretta : String
    let sbagliata : String
    let errata : String
    let emoji : String
//    let contesto : String
}

//creo 4 costanti fatte da elementi che sono della forma Domandaquiz. Ognuna di queste è riferita ad un livello
//IMPORTANTISSIMO, il codice funziona contanto fino a 6 quindi o si mette un controllo per l'ultimo livello oppure si aggiunge una sesta parola all'ultimo livello
//EVENTUALMENTE ALLA STRUCT POSSIAMO AGGIUNGERE UN ATTRIBUTO CHE CONSIDERA UN'IMMAGINE CHE SAREBBE QUELLA CHE VEDIAMO AD OGNI DOMANDE DI OGNI QUIZ PER OGNI LIVELLO, IN MODO CHE LA PASSIMAO COME PARAMETRO ALLA VIEW QuizScene
let greetings : [Domandaquiz] = [
    Domandaquiz(categoria: "Greetings", domanda: "__ , è succies coccos?" , question: "Hey , did something happen?", rispCorretta: "Ue", sbagliata: "T'appost", errata: "Ce verimm", emoji: "🖐🏼"),
    
    Domandaquiz(categoria: "Greetings", domanda: "_________ fra, me n’aggia ij che teng che fa." , question: "See you bro, gotta go since I got stuff to do.", rispCorretta: "Ce verimm", sbagliata: "Scusat signò", errata: "Tutt'appost", emoji: "🤙🏼"),
    
    Domandaquiz(categoria: "Greetings", domanda: "___________, me putit ricer addò sta o’ bagn?" , question: "Excuse me, can you tell me where the bathroom is?", rispCorretta: "Scusat signò", sbagliata: "Cià bell", errata: "Statte buono", emoji: "☝🏼"),
    
    Domandaquiz(categoria: "Greetings", domanda: "_________, tutt’appost?" , question: "Hey beautiful, you doin’ alright?", rispCorretta: "Cià bell", sbagliata: "Ce verimm", errata: "Statte buono", emoji: "👋🏼"),
    
    Domandaquiz(categoria: "Greetings", domanda: "___, comm staje frà?" , question: "___, how you doing?", rispCorretta: "Ue", sbagliata: "T'appost", errata: "Ce verimm", emoji: "🤜🏼🤛🏼"),
    
    Domandaquiz(categoria: "Greetings", domanda: "Scus’ ma nun teng proprj genio e parlà cu te, ___________" , question: "I’m sorry but I don’t feel like talking with you, be well", rispCorretta: "Statte buono'", sbagliata: "Ue", errata: "Scusat signò", emoji: "🤝")
]

let dailylife : [Domandaquiz] = [
    Domandaquiz(categoria: "Daily Life", domanda: "Ua e passà pe Corso Malta? _____" , question: "Wow, do you have to drive through Corso Malta? Wish the Virgin Mary is accompanying you.", rispCorretta: "A’ Maronna t’accumpagna", sbagliata: "T'appost", errata: "A' fessa e soreta", emoji: "⛪️"),
    
    Domandaquiz(categoria: "Daily Life", domanda: "Buonasera ____________" , question: "Good evening Doctor, it’s two euros at your convenience.", rispCorretta: "Dottò, duje euro a piacere", sbagliata: "Statte buono", errata: "Manco a' chiavica", emoji: "🪙"),
    
    Domandaquiz(categoria: "Daily Life", domanda: "Ma perchè nun vuo funzionà,_________" , question: "Why don’t you want to work, damned your sister’s vagina", rispCorretta: "A' fessa e soreta", sbagliata: "C'e accis", errata: "A' Maronna t'accumpagna", emoji: "🐈"),
    
    Domandaquiz(categoria: "Daily Life", domanda: "Ua fra staje parlann ra mezz’ora, ________." , question: "Damn bro you’ve been talking non stop for half an hour, you killed us.", rispCorretta: "C'e accis'", sbagliata: "T'appost", errata: "Statte buono", emoji: "🤦🏼"),
    
    Domandaquiz(categoria: "Daily Life", domanda: "Aggio passat 'na nuttata accussì brutta che ___________" , question: "I’ve had such a terrible night, even worse than a sewer.", rispCorretta: "Manco a' chiavica", sbagliata: "A' fessa e soreta", errata: "Ce verimm", emoji: "💩"),
    
    Domandaquiz(categoria: "Daily Life", domanda: "Vuje stat semp ‘nziem, me parit prorij __________" , question: "You guys are always together, like thrower and spoon.", rispCorretta: "Cazz’ e cucchiara", sbagliata: "C'e accis", errata: "Ue fra", emoji: "🥣")
]


let romance : [Domandaquiz] = [
    Domandaquiz(categoria: "Romance", domanda: "___________, te pozz offrì coccos 'a bere?" , question: "Hey sweetie, can I get you something to drink?", rispCorretta: "Ue bambola", sbagliata: "Dottò, duje euro a piacere", errata: "Ce verimm", emoji: "🗣"),
    
    Domandaquiz(categoria: "Romance", domanda: "___________________" , question: "*sound form of catcalling*", rispCorretta: "Fiuuuuuuuu *whistling*", sbagliata: "A' sola 'ngann", errata: "Ue fra", emoji: "📣"),
    
    Domandaquiz(categoria: "Romance", domanda: "Uà ammo staj pop fort, _______" , question: "Damn love you’re looking good, hard as a rock.", rispCorretta: "Sij ‘na preta", sbagliata: "T'appost", errata: "A’ Maronna t’accumpagna", emoji: "🔥"),
    
    Domandaquiz(categoria: "Romance", domanda: "Quanta bella gent ca miezz, _____________" , question: "There’s so many good looking people out there, let’s go hitting on them.", rispCorretta: "Jammo a pustiggià", sbagliata: "Ue bambola", errata: "Scusat signò", emoji: "🎯"),
    
    Domandaquiz(categoria: "Romance", domanda: "Fra primm e ce salutà c'aggio rat na dij e __________" , question: "Bro, just before saying goodbye to each other I gave them a really passionate kiss with my tongue.", rispCorretta: "A’ sola ‘ngann", sbagliata: "Cazz’ e cucchiara", errata: "Ce verimm", emoji: "👅"),
    
    Domandaquiz(categoria: "Romance", domanda: "...e dopp ‘sta sola ‘ngann ce simme fatt ‘na dij e ______!" , question: "...and after this passionate kiss we had some really good sex!", rispCorretta: "Pelle", sbagliata: "Sij ‘na preta", errata: "Manco a' chiavica", emoji: "🎳")
]

let dangerzone : [Domandaquiz] = [
    Domandaquiz(categoria: "Danger Zone", domanda: "_________________" , question: "*Ancient war-cry*", rispCorretta: "Che're che yo", sbagliata: "Staje guardann?", errata: "Jammo a pustiggià", emoji: "⚔️"),
    
    Domandaquiz(categoria: "Danger Zone", domanda: "Ue, __________" , question: "Hey, are you looking at me?", rispCorretta: "Staje guardann?", sbagliata: "Ce verimm", errata: "Sij ‘na preta", emoji: "👀"),
    
    Domandaquiz(categoria: "Danger Zone", domanda: "____________, me staje sfuttenn?" , question: "What do you want from me, are you mocking me?", rispCorretta: "Oh ma che’re?", sbagliata: "Ue bambola", errata: "A’ sola ‘ngann", emoji: "🤌🏼"),
    
    Domandaquiz(categoria: "Danger Zone", domanda: "Vabbuò aggio capito,_____________?" , question: "I got it, are you looking for trouble?", rispCorretta: "Amma piglià question?", sbagliata: "Staje guardann?", errata: "Puos e’ sord", emoji: "😾"),
    
    Domandaquiz(categoria: "Romance", domanda: "_____________, che marc è?" , question: "Hey, what a nice watch you have. Which brand is it?", rispCorretta: "Ue uagliò, bellu rilogg", sbagliata: "Oh ma che’re?", errata: "A' fessa e soreta", emoji: "⌚️"),
    
    Domandaquiz(categoria: "Danger Zone", domanda: "__________, fa ambress." , question: "Give me your money, make it quick.", rispCorretta: "Puos e’ sord", sbagliata: "Che're che yo", errata: "A' pelle", emoji: "💸")
    
    
]





