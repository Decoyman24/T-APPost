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
    
    Domandaquiz(categoria: "Greetings", domanda: "___, comm staje frà?" , question: "Hey, how you doing?", rispCorretta: "Ue", sbagliata: "T'appost", errata: "Ce verimm", emoji: "🤜🏼🤛🏼"),
    
    Domandaquiz(categoria: "Greetings", domanda: "Scus’ ma nun teng proprj genio e parlà cu te, ___________" , question: "I’m sorry but I don’t feel like talking with you, be well", rispCorretta: "Statte buono'", sbagliata: "Ue", errata: "Scusat signò", emoji: "🤝")
]

let dailylife : [Domandaquiz] = [
    Domandaquiz(categoria: "Daily Life", domanda: "Ua e passà pe Corso Malta? _____" , question: "Wow, do you have to drive through Corso Malta? Wish the Virgin Mary is accompanying you.\n [Corso Malta is a usually high-trafficked road]", rispCorretta: "A’ Maronna t’accumpagna", sbagliata: "T'appost", errata: "A' fessa e soreta", emoji: "⛪️"),
    
    Domandaquiz(categoria: "Daily Life", domanda: "[You just parked your car in Piazza Dante, suddenly you hear someone approaching to you]\nBuonasera ____________" , question: "Good evening Doctor, it’s two euros at your convenience.", rispCorretta: "Dottò, duje euro a piacere", sbagliata: "Statte buono", errata: "Manco a' chiavica", emoji: "🪙"),
    
    Domandaquiz(categoria: "Daily Life", domanda: "[You’re talking to your Mac since Xcode doesn’t seem to work.]\n Ma perchè nun vuo funzionà,_________" , question: "Why don’t you want to work, damned your sister’s vagina", rispCorretta: "A' fessa e soreta", sbagliata: "C'e accis", errata: "A' Maronna t'accumpagna", emoji: "🐈"),
    
    Domandaquiz(categoria: "Daily Life", domanda: "Ua fra staje parlann ra mezz’ora, ________." , question: "Damn bro you’ve been talking non stop for half an hour, you killed us.", rispCorretta: "C'e accis'", sbagliata: "T'appost", errata: "Statte buono", emoji: "🤦🏼"),
    
    Domandaquiz(categoria: "Daily Life", domanda: "Aggio passat 'na nuttata accussì brutta che ___________" , question: "I’ve had such a terrible night, even worse than a sewer.", rispCorretta: "Manco a' chiavica", sbagliata: "A' fessa e soreta", errata: "Ce verimm", emoji: "💩"),
    
    Domandaquiz(categoria: "Daily Life", domanda: "Vuje stat semp ‘nziem, me parit prorij __________" , question: "You guys are always together, like thrower and spoon.", rispCorretta: "Cazz’ e cucchiara", sbagliata: "C'e accis", errata: "Ue fra", emoji: "🥣")
]


let romance : [Domandaquiz] = [
    Domandaquiz(categoria: "Romance", domanda: "[You’re approaching someone you want to flirt.]\n ___________, te pozz offrì coccos 'a bere?" , question: "Hey sweetie, can I get you something to drink?", rispCorretta: "Ue bambola", sbagliata: "Dottò, duje euro a piacere", errata: "Ce verimm", emoji: "🗣"),
    
    Domandaquiz(categoria: "Romance", domanda: "[A stunning person just passed in front of you]\n ___________________" , question: "*sound form of catcalling*", rispCorretta: "Fiuuuuuuuu *whistling*", sbagliata: "A' sola 'ngann", errata: "Ue fra", emoji: "📣"),
    
    Domandaquiz(categoria: "Romance", domanda: "Uà ammo staj pop fort, _______" , question: "Damn love you’re looking good, hard as a rock.", rispCorretta: "Sij ‘na preta", sbagliata: "T'appost", errata: "A’ Maronna t’accumpagna", emoji: "🔥"),
    
    Domandaquiz(categoria: "Romance", domanda: "Quanta bella gent ca miezz, _____________" , question: "There’s so many good looking people out there, let’s go hitting on them.", rispCorretta: "Jammo a pustiggià", sbagliata: "Ue bambola", errata: "Scusat signò", emoji: "🎯"),
    
    Domandaquiz(categoria: "Romance", domanda: "[You’re telling your friend about your latest romantic conquest]\n Fra primm e ce salutà c'aggio rat na dij e __________" , question: "Bro, just before saying goodbye to each other I gave them a really passionate kiss with my tongue.", rispCorretta: "A’ sola ‘ngann", sbagliata: "Cazz’ e cucchiara", errata: "Ce verimm", emoji: "👅"),
    
    Domandaquiz(categoria: "Romance", domanda: "[…continuing with your previous story to your friend]\n ...e dopp ‘sta sola ‘ngann ce simme fatt ‘na dij e ______!" , question: "...and after this passionate kiss we had some really good sex!", rispCorretta: "Pelle", sbagliata: "Sij ‘na preta", errata: "Manco a' chiavica", emoji: "🎳")
]

let dangerzone : [Domandaquiz] = [
    Domandaquiz(categoria: "Danger Zone", domanda: "[You’re in Giugliano(NA) and you’re looking for a fight, when suddenly you hear someone say “ Yooooooo “]\n _________________" , question: "*Ancient war-cry*", rispCorretta: "Che're che yo", sbagliata: "Staje guardann?", errata: "Jammo a pustiggià", emoji: "⚔️"),
    
    Domandaquiz(categoria: "Danger Zone", domanda: "[You’re just minding your business with your friends, when someone approaches you with malicious intent]\n Ue, __________" , question: "Hey, are you looking at me?", rispCorretta: "Staje guardann?", sbagliata: "Ce verimm", errata: "Sij ‘na preta", emoji: "👀"),
    
    Domandaquiz(categoria: "Danger Zone", domanda: "[You’re trying to explain you were watching at something else, but the other person is keen on fighting you.]\n ____________, me staje sfuttenn?" , question: "What do you want from me, are you mocking me?", rispCorretta: "Oh ma che’re?", sbagliata: "Ue bambola", errata: "A’ sola ‘ngann", emoji: "🤌🏼"),
    
    Domandaquiz(categoria: "Danger Zone", domanda: "[You want to politely talk your way out of this so bad, but the other person just doesn’t want to let it go.]\n Vabbuò aggio capito,_____________?" , question: "I got it, are you looking for trouble?", rispCorretta: "Amma piglià question?", sbagliata: "Staje guardann?", errata: "Puos e’ sord", emoji: "😾"),
    
    Domandaquiz(categoria: "Romance", domanda: "[Someone notices your fancy-looking accessories, especially your Rolex.]\n _____________, che marc è?" , question: "Hey, what a nice watch you have. Which brand is it?", rispCorretta: "Ue uagliò, bellu rilogg", sbagliata: "Oh ma che’re?", errata: "A' fessa e soreta", emoji: "⌚️"),
    
    Domandaquiz(categoria: "Danger Zone", domanda: "[As you’re starting to tell the other person that yours is a watch given to you by your late uncle as a parting gift the other guy suddenly points a knife at you.]\n __________, fa ambress." , question: "Give me your money, make it quick.", rispCorretta: "Puos e’ sord", sbagliata: "Che're che yo", errata: "A' pelle", emoji: "💸")
    
    
]





