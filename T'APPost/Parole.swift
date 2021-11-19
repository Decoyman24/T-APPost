//
//  Parole.swift
//  T'APPost
//
//  Created by Luigi Minniti on 16/11/21.
// Struct che sarà il database
import Foundation

struct Parola : Identifiable {
    let id = UUID()
    let nome : String
    let descrizione: String
    let categoria: String
}

let parole : [Parola] = [
    Parola(nome: "Uè", descrizione: #"The equivalent to ue’ is "hey", you can use it in different forms such as "ue’ ue’" for a more informal approach or with a more serious tone as if "hey now". You can also use "oh bell" or "fra" as synonims."#, categoria: "Greetings"),
    Parola(nome: "Tutt'appost'", descrizione: #"You can also find it as "Tutt’ appo’" , "T’appo’". Literally means "everything is ok". It can have various cadences and, as consequence, meanings. If it’s used as an affirmation it means that everything is fine, there is nothing to worry about. On the other end, if it’s used as a question, it can either mean to genuinely ask if a person is ok, or to sarcastically ask if the person in question is serious during an argument. Example: "We fra’ tutto ok?" - "Si fra’ tutt’appost’". "Ehi bro everything ok?" - "Yes bro, everything is fine"#, categoria: "Greetings"),
    Parola(nome: "Ce verimm", descrizione: #"Tipical Neapolitan way to say "see you later". Very common. Example: "ce verimm riman" —> "see you tomorrow" "#, categoria: "Greetings"),
    Parola(nome: "Scusat signo', uè frà", descrizione: #"scusat’ signo’ / o’ zi’ (for older people) / ue fra’ (for younger people). Literally "sorry sir / uncle". Informal greeting. It is usually used when you want to ask a person you don’t know for informations. The idea is similar to the use of \("bro") in the English speaking countries.  Example: "Ue’ fra’ sai dove sta la metro?" —> "Ehi bro do you know where the metro stop is?""#,  categoria: "Greetings"),
    Parola(nome: "Cia' bell", descrizione: #"Literally translated with "hi, beautiful". Common greeting, genderless. A little bit sarcastic. Example: "cia bell, comm staj oggi?" —> "hi beautiful, how are you today?""#, categoria: "Greetings"),
    Parola(nome: "Statt buon", descrizione: #"Literally translated with "be well". Common, polite and caring way to close a conversation with a friend or acquaintance. Example: after a long conversation with you friend, you leave with this sentence."#, categoria: "Greetings"),
    Parola (nome: "A’ Maronn t’accumpagna", descrizione: #"Literally translated with ‘Wish you could walk without worries and blessed by Virgin Mary’s light’. Historically it refers to the fact that when in Naples there was no electricity (1700), only the lights from the little shrines of the Virgin Mary along the roads could lead the way for the people of the city. A monk came up with the idea of illuminated streets in order to reduce crime in the streets. Today it is used, in general, to wish someone a good journey or return home."#, categoria: "Daily Life"),
    Parola (nome: "Dotto’, due eur a piacer’", descrizione: #"Regular and frequent way for unauthorized , most of the time, park-guy to ask for payment. Literally it means "Doctor, two euros to your convenience". The idea of referring to a person, even someone you don’t know, with "doctor" is a sign of respect. Moreover, in a typical Neapolitan sarcastic way, the guy asks for payment using the phrase "to taste", but in reality he already asked for the specific amount of money that he wants."#, categoria: "Daily Life"),
    Parola (nome: "A fess e sor't", descrizione: #"Literally means "damn your sister’s pussy". There are variation on the saying, such as "a fess e mamm’t" or "ind a fess e sor’t".  Although it could seem like an aggressive and offensive insult it can also be considered a borderline cuss word. Example: you are a programmer and the code doesn’t work, so you start to yell at your computer. You say "ind a fess" e sor’t , why won’t you work?""#, categoria: "Daily Life"),
    Parola (nome: "c’e accis’.", descrizione: #"Literally means "you have killed us". Hyperbole used in the common every-day language to express exasperation and frustration. Generally used in sentences against a friend/ person who is self-centered and never gives you room to talk, express your idea, or is an all-around jerk. In common English could be translated with "I’m at my wits end about you"."# , categoria: "Daily Life"),
    Parola (nome: "Na’ chiavica / manco a’ chiavica", descrizione: #"Commonly used to respond to the question "how is it going?". To express that the situation is critical and everything is going to shit. Literally means ‘even worse than a sewer’. The expression is an hyperbole to highlight the sense of complete disillusionment in the task ahead."#, categoria: "Daily Life")
]
