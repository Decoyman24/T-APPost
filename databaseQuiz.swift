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
}

//creo 4 costanti fatte da elementi che sono della forma Domandaquiz. Ognuna di queste è riferita ad un livello
//IMPORTANTISSIMO, il codice funziona contanto fino a 6 quindi o si mette un controllo per l'ultimo livello oppure si aggiunge una sesta parola all'ultimo livello
//EVENTUALMENTE ALLA STRUCT POSSIAMO AGGIUNGERE UN ATTRIBUTO CHE CONSIDERA UN'IMMAGINE CHE SAREBBE QUELLA CHE VEDIAMO AD OGNI DOMANDE DI OGNI QUIZ PER OGNI LIVELLO, IN MODO CHE LA PASSIMAO COME PARAMETRO ALLA VIEW QuizScene
let greetings : [Domandaquiz] = [
    Domandaquiz(categoria: "Greetings", domanda: "__ , è succies coccos?" , question: "Hey , did something happen?", rispCorretta: "Uè", sbagliata: "T'appost", errata: "Ce verimm"),
    Domandaquiz(categoria: "Greetings", domanda: "_________ fra, me n’aggia ij che teng che fa." , question: "See you bro, gotta go since I got stuff to do.", rispCorretta: "Ce verimm", sbagliata: "Scusat signò", errata: "Tutt'appost"),
    Domandaquiz(categoria: "Greetings", domanda: "___________, me putit ricer addò sta o’ bagn?" , question: "Excuse me, can you tell me where the bathroom is?", rispCorretta: "Scusat signò", sbagliata: "Cià bell", errata: "Statte buono"),
    Domandaquiz(categoria: "Greetings", domanda: "_________, tutt’appost?" , question: "Hey beautiful, you doin’ alright?", rispCorretta: "Cià bell", sbagliata: "Ce verimm", errata: "Statte buono"),
    Domandaquiz(categoria: "Greetings", domanda: "___, comm stai frà?" , question: "___, how you doing?", rispCorretta: "Uè", sbagliata: "T'appost", errata: "Ce verimm"),
    Domandaquiz(categoria: "Greetings", domanda: "Scus’ ma nun teng proprj genio e parlà cu te, ___________" , question: "I’m sorry but I don’t feel like talking with you, be well", rispCorretta: "Statte buon'", sbagliata: "Uè", errata: "Scusat signò")
]

let dailylife : [Domandaquiz] = [
    Domandaquiz(categoria: "Daily Life", domanda: "sto in daily life" , question: "vediamo che succede?", rispCorretta: "Uè", sbagliata: "T'appost", errata: "Ce verimm"),
    Domandaquiz(categoria: "Daily Life", domanda: "E'stat na bell serata frà, ____ " , question: "It was a wonderful evening bro, ___", rispCorretta: "Ce verimm", sbagliata: "T'appost", errata: "Scusat signo', uè frà"),
    Domandaquiz(categoria: "Daily Life", domanda: "___, comm stai frà?" , question: "___, how you doing?", rispCorretta: "Uè", sbagliata: "T'appost", errata: "Ce verimm"),
    Domandaquiz(categoria: "Daily Life", domanda: "E'stat na bell serata frà, ____ " , question: "It was a wonderful evening bro, ___", rispCorretta: "Ce verimm", sbagliata: "T'appost", errata: "Scusat signo', uè frà"),
    Domandaquiz(categoria: "Daily Life", domanda: "___, comm stai frà?" , question: "___, how you doing?", rispCorretta: "Uè", sbagliata: "T'appost", errata: "Ce verimm"),
    Domandaquiz(categoria: "Daily Life", domanda: "ultimo di daily life " , question: "It was a wonderful evening bro, ___", rispCorretta: "Ce verimm", sbagliata: "T'appost", errata: "Scusat signo', uè frà")
]


let romance : [Domandaquiz] = [
    Domandaquiz(categoria: "Romance", domanda: "sto in romance" , question: "vediamo che succede?", rispCorretta: "Uè", sbagliata: "T'appost", errata: "Ce verimm"),
    Domandaquiz(categoria: "Romance", domanda: "E'stat na bell serata frà, ____ " , question: "It was a wonderful evening bro, ___", rispCorretta: "Ce verimm", sbagliata: "T'appost", errata: "Scusat signo', uè frà"),
    Domandaquiz(categoria: "Romance", domanda: "___, comm stai frà?" , question: "___, how you doing?", rispCorretta: "Uè", sbagliata: "T'appost", errata: "Ce verimm"),
    Domandaquiz(categoria: "Romance", domanda: "E'stat na bell serata frà, ____ " , question: "It was a wonderful evening bro, ___", rispCorretta: "Ce verimm", sbagliata: "T'appost", errata: "Scusat signo', uè frà"),
    Domandaquiz(categoria: "Romance", domanda: "___, comm stai frà?" , question: "___, how you doing?", rispCorretta: "Uè", sbagliata: "T'appost", errata: "Ce verimm"),
    Domandaquiz(categoria: "Romance", domanda: "ultimo di romance" , question: "It was a wonderful evening bro, ___", rispCorretta: "Ce verimm", sbagliata: "T'appost", errata: "Scusat signo', uè frà")
]

let dangerzone : [Domandaquiz] = [
    Domandaquiz(categoria: "Danger Zone", domanda: "entro in danger zone" , question: "vediamo che succede?", rispCorretta: "Uè", sbagliata: "T'appost", errata: "Ce verimm"),
    Domandaquiz(categoria: "Danger Zone", domanda: "E'stat na bell serata frà, ____ " , question: "It was a wonderful evening bro, ___", rispCorretta: "Ce verimm", sbagliata: "T'appost", errata: "Scusat signo', uè frà"),
    Domandaquiz(categoria: "Danger Zone", domanda: "___, comm stai frà?" , question: "___, how you doing?", rispCorretta: "Uè", sbagliata: "T'appost", errata: "Ce verimm"),
    Domandaquiz(categoria: "Danger Zone", domanda: "E'stat na bell serata frà, ____ " , question: "It was a wonderful evening bro, ___", rispCorretta: "Ce verimm", sbagliata: "T'appost", errata: "Scusat signo', uè frà"),
    Domandaquiz(categoria: "Romance", domanda: "___, comm stai frà?" , question: "___, how you doing?", rispCorretta: "Uè", sbagliata: "T'appost", errata: "Ce verimm"),
    Domandaquiz(categoria: "Danger Zone", domanda: "ultimo di danger zone" , question: "It was a wonderful evening bro, ___", rispCorretta: "Ce verimm", sbagliata: "T'appost", errata: "Scusat signo', uè frà")
    
    
]





