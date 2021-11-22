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
    Parola(nome: "Statt buon", descrizione: #"Literally translated with "be well". Common, polite and caring way to close a conversation with a friend or acquaintance. It's also used as a sarcastic way to leave someone and faking that everything is okay. Example: you're leaving a person with which you just had a quarrel, but you don't want to be rude. "#, categoria: "Greetings"),
    Parola(nome: "A’ Maronn t’accumpagna", descrizione: #"Literally translated with ‘Wish you could walk without worries and blessed by Virgin Mary’s light’. Historically it refers to the fact that when in Naples there was no electricity (1700), only the lights from the little shrines of the Virgin Mary along the roads could lead the way for the people of the city. A monk came up with the idea of illuminated streets in order to reduce crime in the streets. Today it is used, in general, to wish someone a good journey or return home."#, categoria: "Daily Life"),
    Parola(nome: "Dotto’, due eur a piacer’", descrizione: #"Regular and frequent way for unauthorized , most of the time, park-guy to ask for payment. Literally it means "Doctor, two euros to your convenience". The idea of referring to a person, even someone you don’t know, with "doctor" is a sign of respect. Moreover, in a typical Neapolitan sarcastic way, the guy asks for payment using the phrase "to taste", but in reality he already asked for the specific amount of money that he wants."#, categoria: "Daily Life"),
    Parola(nome: "A fess e sor't", descrizione: #"Literally means "damned your sister’s vagina". There are variation on the saying, such as "a fess e mamm’t" or "ind a fess e sor’t".  Although it could seem like an aggressive and offensive insult it can also be considered a borderline cuss word. Example: you are a programmer and the code doesn’t work, so you start to yell at your computer. You say "ind a fess" e sor’t , why won’t you work?""#, categoria: "Daily Life"),
    Parola(nome: "Ce' accis’.", descrizione: #"Literally means "you have killed us". Hyperbole used in the common every-day language to express exasperation and frustration. Generally used in sentences against a friend/ person who is self-centered and never gives you room to talk, express your idea, or is an all-around jerk. In common English could be translated with "I’m at my wits end about you"."# , categoria: "Daily Life"),
    Parola(nome: "Na’ chiavica / manco a’ chiavica", descrizione: #"Commonly used to respond to the question "how is it going?". To express that the situation is critical and everything is going to shit. Literally means ‘even worse than a sewer’. The expression is an hyperbole to highlight the sense of complete disillusionment in the task ahead."#, categoria: "Daily Life"),
    Parola (nome: "Cazz' e cucchiar", descrizione: #"Literally ‘thrower and spoon’. There is also a wrong belief that it derives from ‘cup and spoon’. Although the meaning is similar, the correct etymology is the first one. The saying is commonly used joined with the expression ‘sit cazz e cucchiar’ which means ‘you two are like thrower and spoon’; it usually express an idea of connection and closeness  between two people, most of the time not romantic. The equivalent in English is ‘two peas in a pod’."#, categoria: "Daily Life"),
    Parola(nome:"Uè bambola/Uè ciù ciù", descrizione: #"Literally " hey sweetness/sweetie ". Romantic, yet by some considered sarcastic and offensive, way to refer to a woman (bambola stands for doll) or a significant other (ciù ciù). The ciù ciù are the most common candies that you can find in fairs (ex. haribo)."#, categoria: "Romance"),
    Parola(nome:"Fiuuuuuu *whistling*", descrizione: #"Typical catcalling. Usually done by the local wildlife (cuozzo). We think it’s also important to underline the fact that the whistle is a form of communication itself: the longer the whistle, the serious the topic/reaction/accusation."#, categoria: "Romance"),
    Parola(nome:"Sij 'na preta", descrizione: #" Literally translated with ‘you are a stone’, although it means ‘you are hot as hell’. The most classic of compliments, yet a little bit trashy, to woo a partner. The idea is to highlight the correlation between hardness and hotness of a person. (I.E. : stai tost, comm si’ tost…)"#, categoria: "Romance"),
    Parola(nome:"Jamm a pustiggià", descrizione: #"Literally "let’s go make a pusteggia". The pusteggia in Neapolitan could be seen as a reinterpretation of the idea of courtship when a potential suitor gets closer to his love interest and begins a conversation. The pusteggia is commonly done by a group of 4/5 friends whose objective for the night is to meet girls. Example: when you are out with your friends and you want to meet new people? You go making pustegge."#, categoria: "Romance"),
    Parola(nome:"A' sola 'ngann", descrizione: #"Literally "sole in the throat". Even though the expression could sound aggressive and violent, in reality is pretty romantic; it means a kiss with the use of the tongue. Analyzing the element we can see a clear connection between sola-sole-tongue and n’gann-throat. The ‘violence’ of the saying tends to highlight the passion that permeates through the kiss."#, categoria: "Romance"),
    Parola(nome:"A' pelle", descrizione: #"Literally "the skin". There are variations such as "fatte 'na pelle" which means literally "do a skin". The real meaning of the expression is "go and have sex". This expression derives directly from latin: in fact "pellex" in latin means "prostitute", so if we wanted to consider its literal etymology it would mean "to have sex with a prostitute"."#, categoria: "Romance"),
    Parola(nome:"[Speaker 1]: Yoo. / [Speaker 2] Che're che yoooo.", descrizione:#"Literal translation not available. USE WITH CAUTION. "Yoo" is catalogued as a war-cry. Usually when yelled a gang fight could start. The first part of the expression is an invite for a potential opponent. When a second speaker responds with the second come-back then he implicitly accepted to fight. The expression is very used in the suburban area of Giugliano, around Naples. We highly suggest not to use this expression if you are not ready to fight."#, categoria:"Danger Zone"),
    Parola(nome:"Staje guardann?", descrizione:#"Literally translated with “are you looking at me?” It’s a confrontational sentence usually used to lead the other person to quarrel with you. A variation of the sentence can be “Staje guardann a' guagliona mij?” which translates as “are you looking at my girlfriend?”. The Neapolitan man is a really possessive one, so we recommend not to engage. Even if you are right, just ignore them."#, categoria:"Danger Zone"),
    Parola(nome:"Oh ma che're?", descrizione:#"Literally translated with “Hey, what do you want from me?”. It’s a very rude way to pick a fight with someone, but it can also be used as an answer when someone is harassing you or pissing you off."#, categoria:"Danger Zone"),
    Parola(nome:"Uè uagliò, bellu 'rilogg.", descrizione:#"It means “ Hey, what a nice watch you have. “ Usually you would be flattered by a compliment, but in this case they just want to rob you. Run."#, categoria:"Danger Zone"),
    Parola(nome:"Puos e' sord.", descrizione:#"Literal invite to "hand over your monetary possessions", it's kinda clear what's going on. You're being mugged."#, categoria:"Danger Zone"),
    Parola(nome:"SestaParola", descrizione:#"DescSesta"#, categoria:"Danger Zone")
]
