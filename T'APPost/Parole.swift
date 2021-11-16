//
//  Parole.swift
//  T'APPost
//
//  Created by Luigi Minniti on 16/11/21.
//
import Foundation

struct Parola : Identifiable {
    let id = UUID()
    let nome : String
    let descrizione: String
    let categoria: String
}

let parole : [Parola] = [
    Parola(nome: "Uè", descrizione: "Uè is the \("hey") equivalent in neapolitan", categoria: "Greetings"),
    Parola(nome: "Ueue", descrizione: "Uè is the \("hey") equivalent in neapolitan", categoria: "Greetings"),
    Parola(nome: "Fratm", descrizione: "This is the english equivlent to bro", categoria: "Greetings"),
    Parola(nome: "Chitabbi", descrizione: "Uè is the \("hey") equivalent in neapolitan", categoria: "Greetings"),
    Parola(nome: "Ammo", descrizione: "Uè is the \("hey") equivalent in neapolitan", categoria: "Greetings"),
    Parola(nome: "Fratacchiò", descrizione: "Uè is the \("hey") equivalent in neapolitan", categoria: "Greetings")
]
