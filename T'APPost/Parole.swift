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
    Parola(nome: "Ue", descrizione: #"The equivalent to Ue is "Hey", you can use it in different forms such as "ue ue" for a more informal approach or with a more serious tone as if "Hey now". You can also use "Oh bell" or "Fra" as synonims. Example: "Ue buongiorno!". "Hey goodmorning!" "#, categoria: "Greetings"),
    
    Parola(nome: "Tutt' apposto", descrizione: #"You can also find it as "Tutt’ appo’" , "T’appo’". Literally means "Everything is ok". It can have various cadences and, as consequence, meanings. If it’s used as an affirmation it means that everything is fine, there is nothing to worry about. On the other hand, if it’s used as a question, it can either mean to genuinely ask if a person is ok, or to sarcastically ask if the person in question is serious during an argument. Example: "- Ue fra tutto bene? | - Si fra’ tutt’ apposto". "- Ehi bro everything ok? | - Yeah, everything is fine"#, categoria: "Greetings"),
    
    Parola(nome: "Ce verimm", descrizione: #"Tipical Neapolitan way to say "See you later". Very common. Example: "Ce verimm riman". "See you tomorrow" "#, categoria: "Greetings"),
    
    Parola(nome: "Scusate Signo' / Ue fra", descrizione: #"Scusat’ Signo’ / O’ zi’ (for older people) / Ue fra’ (for younger people). Literally "Sorry Sir / Uncle". Informal greeting. It is usually used when you want to ask a person you don’t know for informations. The idea is similar to the use of "bro" in the English speaking countries. Example: "Ue fra sai dove sta la metro?". "Hey bro do you know where the metro stop is?""#,  categoria: "Greetings"),
    
    Parola(nome: "Cia' bell", descrizione: #"Literally translated with "Hi, beauty". Common greeting, genderless. A little bit sarcastic. Example: "Cia' bell, comm staje oggi?". "Hi beauty, how are you today?""#, categoria: "Greetings"),
    
    Parola(nome: "Statte buono", descrizione: #"Literally translated with "Be well". Common, polite and caring way to close a conversation with a friend or acquaintance. Example: "- Ue io me ne sto jenn | - Statte buono!". "- Hey I'm leaving | - Be well!" "#, categoria: "Greetings"),
    
    Parola(nome: "A’ Maronna t’accumpagna", descrizione: #"Literally translated with "Wish you could walk without worries and blessed by Virgin Mary’s light". Historically it refers to the fact that when in Naples there was no electricity, in 1700, only the lights from the little shrines of the Virgin Mary along the roads could lead the way for the people of the city. A monk came up with the idea of illuminated streets in order to reduce crime in the streets. Today it is used, in general, to wish someone a good journey or return home. Example: "- Domani partirò per Roma | - Ch'a Maronna t'accumpagna". "- Tomorrow I'll leave for Rome | - (...)" "#, categoria: "Daily Life"),
    
    Parola(nome: "Duje euro a piacere", descrizione: #"Regular and frequent way for unauthorized , most of the time, park-guy to ask for payment. Literally it means "Two euros to your convenience". The idea of referring to a person, even someone you don’t know, with "doctor" is a sign of respect. Moreover, in a typical Neapolitan sarcastic way, the guy asks for payment using the phrase "...to taste", but in reality he already asked for the specific amount of money he wants. Example: "Dottò, duje euro a piacere, è pe criature!". "Doctor, two euros to your convenience, it's for my sons!" "#, categoria: "Daily Life"),
    
    Parola(nome: "A' fessa e soreta!", descrizione: #"Literally means "Damn your sister’s pussy!". There are variation on the saying, such as "a' fessa e mammeta" or "ind a' fessa e soreta".  Although it could seems like an aggressive and offensive insult it can also be considered a borderline cuss word. Example: "Ind a' fessa e soreta, perchè nun te staje zitto?" "Damn your sister's pussy, why you don't shut up?""#, categoria: "Daily Life"),
    
    Parola(nome: "C’e accis’.", descrizione: #"Literally means "you have killed us". Hyperbole used in the common every-day language to express exasperation and frustration. Generally used in sentences against a friend/person who is self-centered and never gives you room to talk, express your idea, or is an all-around jerk. In common English could be translated with "I’m at my wits end about you". Example: "Oh, e basta e parlà ro calcio, c'e accis!" "Oh come on, stop talking about football, I've had enough!" "# , categoria: "Daily Life"),
    
    Parola(nome: "Na’ chiavica / Manco a’ chiavica", descrizione: #"Commonly used to respond to the question "How is it going?". To express that the situation is critical and everything is going to shit. Literally means "Even worse than a sewer". The expression is an hyperbole to highlight the sense of complete disillusionment in the task ahead. Example: "- Comm sta jenno chist'anno? | - Manco a' chiavica" "- How is going this year? | - Really bad" "#, categoria: "Daily Life"),
    
    Parola (nome: "Cazz' e cucchiara", descrizione: #"Literally "thrower and spoon". There is also a wrong belief that it derives from "cup and spoon". Although the meaning is similar, the correct etymology is the first one. The saying is commonly used joined with the expression "site cazz e cucchiara" which means "you two are like thrower and spoon", it usually express an idea of connection and closeness between two people, most of the time not romantic. The equivalent in English is "two peas in a pod". Example: "Chilli duje paren cazz' e cucchiara" "They looks like thrower and spoon" "#, categoria: "Daily Life"),
    
    Parola(nome:"Ue bambola/Ue ciuciù", descrizione: #"Literally "Hey sweetie". Romantic, yet by some considered sarcastic and offensive, way to refer to a woman ('bambola' stands for doll) or a significant other (ciuciù). The ciuciù are the most common candies that you can find in fairs (ex. Haribo). Example: "Ue ciuciù, comm staje?" "Hey sweetie, how are you?" "#, categoria: "Romance"),
    
    Parola(nome:"Fiuuuuuu *whistling*", descrizione: #"Called also catcalling. Usually done by the local wildlife ('cuozzo'). We think it’s also important to underline the fact that the whistle is a form of communication itself: the longer the whistle, the serious the topic/reaction/accusation. Example: "- Comm me sta stu vestito? | - *whistling*" "- Comm me sta stu vestito? | - *whistling*" "#, categoria: "Romance"),
    
    Parola(nome:"Sij 'na preta", descrizione: #"Literally translated with "You are a stone", although it means "you're hot as hell". The most classic of compliments, yet a little bit trashy, to woo a partner. The idea is to highlight the correlation between hardness and hotness of a person. Example: "Ua ammo, sij 'na preta" "My love, you're hot af" "#, categoria: "Romance"),
    
    Parola(nome:"Jammo a pustiggià", descrizione: #"Literally "let’s go make a pusteggia". The pusteggia in Neapolitan could be seen as a reinterpretation of the idea of courtship when a potential suitor gets closer to his love interest and begins a conversation. The pusteggia is commonly done by a group of 4/5 friends whose objective for the night is to meet girls. Example: when you are out with your friends and you want to meet new people? You go making pustegge. Example: "Uagliù stasera jammo a pustiggià" "Guys this evening we'll hookup" "#, categoria: "Romance"),
    
    Parola(nome:"A' sola 'ngann", descrizione: #"Literally "sole in the throat". Even though the expression could sound aggressive and violent, in reality is pretty romantic; it means a kiss with the use of the tongue. Analyzing the element we can see a clear connection between sola-sole-tongue and n’gann-throat. The ‘violence’ of the saying tends to highlight the passion that permeates through the kiss. Example: "C'aggia rat na sola 'ngann" "I had a passionate French kiss" "#, categoria: "Romance"),
    
    Parola(nome:"A' pelle", descrizione: #"Literally "the skin". There are variations such as "Fatte 'na pelle" which means literally "Do a skin". The real meaning of the expression is "Go and have sex". This expression derives directly from latin: in fact "pellex" in latin means "prostitute", so if we wanted to consider it's literal etymology it would mean "...to have sex with a prostitute". Example: "Ieri sera c'amma fatt na pell" "Yesterday evening we had sex" "#, categoria: "Romance"),
    
    Parola(nome:"[Speaker 1]: Yo! [Speaker 2] Che're che yo!", descrizione:#"Literal translation not available. USE WITH CAUTION. "Yo" is catalogued as a war-cry. Usually when yelled a gang fight could start. The first part of the expression is an invite for a potential opponent. When a second speaker responds with the second come-back then he implicitly accepted to fight. The expression is very used in the suburban area of Giugliano, around Naples. We highly suggest not to use this expression if you are not ready for a fight. Example: I think it's clear enough. "#, categoria:"Danger Zone"),
    
    Parola(nome:"Staje guardann?!", descrizione:#"Literally translated with “Are you looking at me?!” It’s a confrontational sentence usually used to lead the other person to quarrel with you. A variation of the sentence can be “Staje guardann a' guagliona mia?” which translates as “Are you looking at my girlfriend?!”. The Neapolitan man is a really possessive one, so we recommend not to engage. Even if you are right, just ignore them. Example: "Oh fra ma staje guardann?" "Hey bro are you staring at me?" "#, categoria:"Danger Zone"),
    
    Parola(nome:"Oh ma che're?", descrizione:#"Literally translated with “Hey, what do you want from me?”. It’s a very rude way to pick a fight with someone, but it can also be used as an answer when someone is harassing you or pissing you off. Example: "Oh ma che're? Tien cocc problema?" "Hey, what do you want from me? Do you have a beef with me?" "#, categoria:"Danger Zone"),
    
    Parola(nome:"Ue uagliò, bellu 'rilogg.", descrizione:#"It means “Hey, what a nice watch you have“. Usually you would be flattered by a compliment, but in this case they just want to rob you. Run. Example: Look at your wrist ;) "#, categoria:"Danger Zone"),
    
    Parola(nome:"Puos e' sord.", descrizione:#"Literal invite to "hand over your monetary possessions", it's kinda clear what's going on. You're being mugged. Example: "Statt zitt e puos e' sord!" "Shut up and give me your money!" "#, categoria:"Danger Zone"),
    
    Parola(nome:"Amma piglià questione?!", descrizione:#"Literally "Are you looking for troubles?!".  If you find yourself at this point in a conversation, maybe something has gone wrong. The interlocutor seems to be hurted for something you did/said and doesn't want to let it go. Your body, your choice, now it's time for apologies or for trouble. Think about it. Example: "O MA AMMA PIGLIÀ QUESTIONE?!" "HEY ARE YOU LOOKING FOR TROUBLES?!" "#, categoria:"Danger Zone")
]
