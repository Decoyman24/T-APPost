//
//  QuizScene.swift
//  T'APPost
//
//  Created by Daniele De Nisi on 17/11/21.
//

import Foundation
import SwiftUI



struct LoadingViewQuiz : View {
    var variabilleAppoggio_categoria_scelta : String
    
    @State var Quiz_del_livello_da_visualizzare = 0
    @Binding var passaggio_view_appoggio : Bool   //variabile che prendo da IntroQuiz che mi serve per continuare con la navigazione nelle varie Quizscene
    @Binding var liv_sbloccato : Int 
    
    
    var body: some View {
        
        switch variabilleAppoggio_categoria_scelta {
            
        case "Greetings":
            switch Quiz_del_livello_da_visualizzare{
            case 0:
                QuizScene(domande_da_usare: greetings[0], quiz_liv_da_visualizzare: $Quiz_del_livello_da_visualizzare, torniamo_alla_dash: $passaggio_view_appoggio, LvSbloccato: $liv_sbloccato)
            case 1:
                QuizScene (domande_da_usare: greetings[1], quiz_liv_da_visualizzare: $Quiz_del_livello_da_visualizzare, torniamo_alla_dash: $passaggio_view_appoggio, LvSbloccato: $liv_sbloccato)
            case 2 :
                QuizScene(domande_da_usare: greetings[2], quiz_liv_da_visualizzare: $Quiz_del_livello_da_visualizzare, torniamo_alla_dash: $passaggio_view_appoggio, LvSbloccato: $liv_sbloccato)
            case 3 :
                QuizScene(domande_da_usare: greetings[3], quiz_liv_da_visualizzare: $Quiz_del_livello_da_visualizzare, torniamo_alla_dash: $passaggio_view_appoggio, LvSbloccato: $liv_sbloccato)
            case 4 :
                QuizScene(domande_da_usare: greetings[4], quiz_liv_da_visualizzare: $Quiz_del_livello_da_visualizzare, torniamo_alla_dash: $passaggio_view_appoggio, LvSbloccato: $liv_sbloccato)
            case 5 :
                QuizScene(domande_da_usare: greetings[5], quiz_liv_da_visualizzare: $Quiz_del_livello_da_visualizzare, torniamo_alla_dash: $passaggio_view_appoggio, LvSbloccato: $liv_sbloccato)
            default :
                //                caso default dello switch. Per sicurezza ho messo quizdash, ma qua non ci deve proprio entrare
                QuizDash()
                //            self.shouldPopToRootView = false
            }
            
            
        case "Daily Life":
            switch Quiz_del_livello_da_visualizzare{
            case 0:
                QuizScene(domande_da_usare: dailylife[0], quiz_liv_da_visualizzare: $Quiz_del_livello_da_visualizzare, torniamo_alla_dash: $passaggio_view_appoggio, LvSbloccato: $liv_sbloccato)
            case 1:
                QuizScene (domande_da_usare: dailylife[1], quiz_liv_da_visualizzare: $Quiz_del_livello_da_visualizzare, torniamo_alla_dash: $passaggio_view_appoggio, LvSbloccato: $liv_sbloccato)
            case 2 :
                QuizScene(domande_da_usare: dailylife[2], quiz_liv_da_visualizzare: $Quiz_del_livello_da_visualizzare, torniamo_alla_dash: $passaggio_view_appoggio, LvSbloccato: $liv_sbloccato)
            case 3 :
                QuizScene(domande_da_usare: dailylife[3], quiz_liv_da_visualizzare: $Quiz_del_livello_da_visualizzare, torniamo_alla_dash: $passaggio_view_appoggio, LvSbloccato: $liv_sbloccato)
            case 4 :
                QuizScene(domande_da_usare: dailylife[4], quiz_liv_da_visualizzare: $Quiz_del_livello_da_visualizzare, torniamo_alla_dash: $passaggio_view_appoggio, LvSbloccato: $liv_sbloccato)
            case 5 :
                QuizScene(domande_da_usare: dailylife[5], quiz_liv_da_visualizzare: $Quiz_del_livello_da_visualizzare, torniamo_alla_dash: $passaggio_view_appoggio, LvSbloccato: $liv_sbloccato)
            default :
                QuizDash()
            }

        case "Romance":
            switch Quiz_del_livello_da_visualizzare{
            case 0:
                QuizScene(domande_da_usare: romance[0], quiz_liv_da_visualizzare: $Quiz_del_livello_da_visualizzare, torniamo_alla_dash: $passaggio_view_appoggio, LvSbloccato: $liv_sbloccato)
            case 1:
                QuizScene (domande_da_usare: romance[1], quiz_liv_da_visualizzare: $Quiz_del_livello_da_visualizzare, torniamo_alla_dash: $passaggio_view_appoggio, LvSbloccato: $liv_sbloccato)
            case 2 :
                QuizScene(domande_da_usare: romance[2], quiz_liv_da_visualizzare: $Quiz_del_livello_da_visualizzare, torniamo_alla_dash: $passaggio_view_appoggio, LvSbloccato: $liv_sbloccato)
            case 3 :
                QuizScene(domande_da_usare: romance[3], quiz_liv_da_visualizzare: $Quiz_del_livello_da_visualizzare, torniamo_alla_dash: $passaggio_view_appoggio, LvSbloccato: $liv_sbloccato)
            case 4 :
                QuizScene(domande_da_usare: romance[4], quiz_liv_da_visualizzare: $Quiz_del_livello_da_visualizzare, torniamo_alla_dash: $passaggio_view_appoggio, LvSbloccato: $liv_sbloccato)
            case 5 :
                QuizScene(domande_da_usare: romance[5], quiz_liv_da_visualizzare: $Quiz_del_livello_da_visualizzare, torniamo_alla_dash: $passaggio_view_appoggio, LvSbloccato: $liv_sbloccato)
            default :
                QuizDash()
            }


        case "Danger Zone": //in questo default deve andare l'ultimo caso ossi la Danger Zone, che non viene intercettate da nessuno dei casi precedenti
            //            il for each non va bene e deve essere sostituito da un ulteriore switch
            switch Quiz_del_livello_da_visualizzare{
            case 0:
                QuizScene(domande_da_usare: dangerzone[0], quiz_liv_da_visualizzare: $Quiz_del_livello_da_visualizzare, torniamo_alla_dash: $passaggio_view_appoggio, LvSbloccato: $liv_sbloccato)
            case 1:
                QuizScene (domande_da_usare: dangerzone[1], quiz_liv_da_visualizzare: $Quiz_del_livello_da_visualizzare, torniamo_alla_dash: $passaggio_view_appoggio, LvSbloccato: $liv_sbloccato)
            case 2 :
                QuizScene(domande_da_usare: dangerzone[2], quiz_liv_da_visualizzare: $Quiz_del_livello_da_visualizzare, torniamo_alla_dash: $passaggio_view_appoggio, LvSbloccato: $liv_sbloccato)
            case 3 :
                QuizScene(domande_da_usare: dangerzone[3], quiz_liv_da_visualizzare: $Quiz_del_livello_da_visualizzare, torniamo_alla_dash: $passaggio_view_appoggio, LvSbloccato: $liv_sbloccato)
            case 4 :
                QuizScene(domande_da_usare: dangerzone[4], quiz_liv_da_visualizzare: $Quiz_del_livello_da_visualizzare, torniamo_alla_dash: $passaggio_view_appoggio, LvSbloccato: $liv_sbloccato)
            case 5 :
                QuizScene(domande_da_usare: dangerzone[5], quiz_liv_da_visualizzare: $Quiz_del_livello_da_visualizzare, torniamo_alla_dash: $passaggio_view_appoggio, LvSbloccato: $liv_sbloccato)
            default :
                QuizDash()
            }
            
        default:
            QuizDash()
        }
    }
}



//enum ActiveAlert {
//    case corretta, sbagliata
//}

struct QuizScene: View {
    
    let domande_da_usare : Domandaquiz
    @State private var showingAlertcorretta = false
    @State private var showingAlert_sbaliata = false
    //    @State private var showingAlert_sbaliata_wrong = false
    //    @State private var activeAlert: ActiveAlert
    @State private var showAlert = false
    @State var alertAttiva : Bool = false
    
    
    @Binding var quiz_liv_da_visualizzare : Int
    @Binding var torniamo_alla_dash : Bool //variabile di appoggio, legata alla navigazione, che mi permette di tonrare alla dashboard quando clicco sull'ultimo buttone Next dell'ultima alert per ogni quiz (per livello)
    
    @Binding var LvSbloccato : Int
    
    
    var body: some View {
        //        NavigationView{
        
        
        let array_appoggio_da_shuffulare = [domande_da_usare.errata, domande_da_usare.rispCorretta, domande_da_usare.sbagliata]
        let array_shufflato = array_appoggio_da_shuffulare.shuffled()
        
        
        VStack(spacing:10){
            Text("Quiz")
                .font(.largeTitle)
                .foregroundColor(Color(UIColor.systemBlue))
                .fontWeight(.heavy)
                .padding(5.0)
                .frame(maxWidth: .infinity, alignment: .leading)
            Spacer()
            ZStack{
                RoundedRectangle(cornerRadius: 20)
                    .frame(height: 400).foregroundColor(Color(UIColor.systemGray6))
                    .padding(.horizontal)
                
                VStack{
                    Image("buttBack")
                    Group{
                        Text(domande_da_usare.domanda).fontWeight(.medium).foregroundColor(Color.black).padding(.horizontal, 15).multilineTextAlignment(.center)
                        Text(domande_da_usare.question).italic().foregroundColor(Color.black).padding(.horizontal, 15)
                    }.padding(.horizontal).multilineTextAlignment(.center)
                }
            }.padding(.horizontal, 15)
            
            //            provaiamo ada avere bottoniu con risposte mischiate
            Group{
                Button(array_shufflato[0]) {
                    if (array_shufflato[0] == domande_da_usare.rispCorretta){
                        //                    showingAlertcorretta = true
                        alertAttiva = true
                        //                        activeAlert = .corretta
                    } else {
                        //                        showingAlert_sbaliata = true
                        //                        activeAlert = .sbagliata
                        alertAttiva = false
                    }
                    
                    self.showAlert = true
                }
                
                .alert(isPresented: $showAlert) {
                    //                    switch activeAlert {
                    if (alertAttiva) {
                        return Alert(title: Text("Well Done!"), message: Text("You know how to use this word. Try to use it in everyday  life!"),   dismissButton: .default(Text("Next"), action: {
                            if (quiz_liv_da_visualizzare < 5){  //fatto così per ora per avere il codice funzionanate ma se riuscite in modo più pulito cambiate
                                quiz_liv_da_visualizzare += 1} //poichè per ogni livello abbimao 6 domande  (da 6 paroole) questa variabile fa da conteggio
                            else {
                                if (domande_da_usare.categoria == "Greetings") {
                                    
                                    ourUser.dailyLifeUnlocked = true
                                    LvSbloccato += 1
                                    ourUser.userTitle = "Scugnizzo"
                                    ourUser.profilePic = "SCUGNIZZO"
                                    ourUser.progress = 25
                                    self.torniamo_alla_dash = false
                                    
                                } else if (domande_da_usare.categoria == "Daily Life"){
                                    ourUser.romanceUnlocked = true
                                    LvSbloccato += 1
                                    ourUser.userTitle = "Sarracino"
                                    ourUser.profilePic = "SARRACINO"
                                    ourUser.progress = 50
                                    self.torniamo_alla_dash = false
                                    
                                } else if (domande_da_usare.categoria == "Romance") {
                                    ourUser.dangerZoneUnlocked = true
                                    LvSbloccato += 1
                                    ourUser.userTitle = "Cafone"
                                    ourUser.profilePic = "CAFONE"
                                    ourUser.progress = 75
                                    self.torniamo_alla_dash = false
                                    
                                } else if (domande_da_usare.categoria == "Danger Zone"){
                                    LvSbloccato += 1
                                    ourUser.progress = 100
                                    self.torniamo_alla_dash = false
                                }
                            }
                        }))
                    } else {
                        //                               case .sbagliata:
                        return Alert(
                            title: Text("Wrong"),
                            message: Text("Looks like you need to check the words and their meaning again"),
                            dismissButton: .default(Text("Try again"))
                        )
                    }
                }
                
                //secondo bottone
                
                Button(array_shufflato[1]) {
                    if (array_shufflato[1] == domande_da_usare.rispCorretta){
                        //                    showingAlertcorretta = true
                        alertAttiva = true
                        //                        activeAlert = .corretta
                    } else {
                        //                        showingAlert_sbaliata = true
                        //                        activeAlert = .sbagliata
                        alertAttiva = false
                    }
                    
                    self.showAlert = true
                }
                
                .alert(isPresented: $showAlert) {
                    //                    switch activeAlert {
                    if (alertAttiva) {
                        return Alert(title: Text("Well Done!"), message: Text("You know how to use this word. Try to use it in everyday  life!"),   dismissButton: .default(Text("Next"), action: {
                            if (quiz_liv_da_visualizzare < 5){  //fatto così per ora per avere il codice funzionanate ma se riuscite in modo più pulito cambiate
                                quiz_liv_da_visualizzare += 1} //poichè per ogni livello abbimao 6 domande  (da 6 paroole) questa variabile fa da conteggio
                            else {
                                if (domande_da_usare.categoria == "Greetings") {
                                    
                                    ourUser.greetingsUnlocked = true
                                    LvSbloccato += 1
                                    ourUser.userTitle = "Scugnizzo"
                                    ourUser.profilePic = "SCUGNIZZO"
                                    ourUser.progress = 25
                                    badges[1].greyness = 0
                                    self.torniamo_alla_dash = false
                                    
                                } else if (domande_da_usare.categoria == "Daily Life"){
                                    ourUser.dailyLifeUnlocked = true
                                    LvSbloccato += 1
                                    ourUser.userTitle = "Sarracino"
                                    ourUser.profilePic = "SARRACINO"
                                    ourUser.progress = 50
                                    self.torniamo_alla_dash = false
                                    
                                } else if (domande_da_usare.categoria == "Romance") {
                                    ourUser.romanceUnlocked = true
                                    LvSbloccato += 1
                                    ourUser.userTitle = "Cafone"
                                    ourUser.profilePic = "CAFONE"
                                    ourUser.progress = 75
                                    self.torniamo_alla_dash = false
                                    
                                } else if (domande_da_usare.categoria == "Danger Zone"){
                                    LvSbloccato += 1
                                    ourUser.dangerZoneUnlocked = true
                                    ourUser.progress = 100
                                    self.torniamo_alla_dash = false
                                }
                                
                            }
                        }))
                    } else {
                        //                               case .sbagliata:
                        return Alert(
                            title: Text("Wrong"),
                            message: Text("Looks like you need to check the words and their meaning again"),
                            dismissButton: .default(Text("Try again"))
                        )
                    }
                }
                
                
                //                terzo bottone
                Button(array_shufflato[2]) {
                    if (array_shufflato[2] == domande_da_usare.rispCorretta){
                        //                    showingAlertcorretta = true
                        alertAttiva = true
                        //                        activeAlert = .corretta
                    } else {
                        //                        showingAlert_sbaliata = true
                        //                        activeAlert = .sbagliata
                        alertAttiva = false
                    }
                    
                    self.showAlert = true
                }
                
                .alert(isPresented: $showAlert) {
                    //                    switch activeAlert {
                    if (alertAttiva) {
                        return Alert(title: Text("Well DOne!"), message: Text("You know how to use this word. Try to use it in everyday  life!"),   dismissButton: .default(Text("Next"), action: {
                            if (quiz_liv_da_visualizzare < 5){  //fatto così per ora per avere il codice funzionanate ma se riuscite in modo più pulito cambiate
                                quiz_liv_da_visualizzare += 1} //poichè per ogni livello abbimao 6 domande  (da 6 paroole) questa variabile fa da conteggio
                            else {
                                if (domande_da_usare.categoria == "Greetings") {
                                    
                                    ourUser.dailyLifeUnlocked = true
                                    LvSbloccato += 1
                                    ourUser.userTitle = "Scugnizzo"
                                    ourUser.profilePic = "SCUGNIZZO"
                                    ourUser.progress = 25
                                    self.torniamo_alla_dash = false
                                    
                                } else if (domande_da_usare.categoria == "Daily Life"){
                                    ourUser.romanceUnlocked = true
                                    LvSbloccato += 1
                                    ourUser.userTitle = "Sarracino"
                                    ourUser.profilePic = "SARRACINO"
                                    ourUser.progress = 50
                                    self.torniamo_alla_dash = false
                                    
                                } else if (domande_da_usare.categoria == "Romance") {
                                    ourUser.dangerZoneUnlocked = true
                                    LvSbloccato += 1
                                    ourUser.userTitle = "Cafone"
                                    ourUser.profilePic = "CAFONE"
                                    ourUser.progress = 75
                                    self.torniamo_alla_dash = false
                                    
                                } else if (domande_da_usare.categoria == "Danger Zone"){
                                    LvSbloccato += 1
                                    ourUser.progress = 100
                                    self.torniamo_alla_dash = false
                                }
                            }
                        }))
                    } else {
                        //                               case .sbagliata:
                        return Alert(
                            title: Text("Wrong"),
                            message: Text("Looks like you need to check the words and their meaning again"),
                            dismissButton: .default(Text("Try again"))
                        )
                    }
                }
                
            }.frame(maxWidth:220, maxHeight: 35, alignment: .center)
                .padding(.vertical)
                .background(Color(UIColor.systemGray6))
                .cornerRadius(30)
                .font(.title3)
                .foregroundColor(Color(UIColor.systemBlue))
            
            
            //            Group{
            //                Button(domande_da_usare.sbagliata) {
            //                    showingAlert_sbaliata = true
            //                }
            //                .alert(isPresented:$showingAlert_sbaliata) {
            //                    Alert(
            //                        title: Text("Wrong"),
            //                        message: Text("Looks like you need to check the words and their meaning again"),
            //                        dismissButton: .default(Text("Try again"))
            //                    )
            //                }
            //                ;
            //                Button(domande_da_usare.rispCorretta) {
            //                    showingAlertcorretta = true
            //                }
            //                .alert(isPresented:$showingAlertcorretta) {
            //                    Alert(
            //                        title: Text("Well done!"),
            //                        message: Text("You know how to use this word. Try to use it in everyday life"),
            //                        dismissButton: .default(Text("Next"), action: {
            //                            if (quiz_liv_da_visualizzare != 5){  //fatto così per ora per avere il codice funzionanate ma se riuscite in modo più pulito cambiate
            //                                quiz_liv_da_visualizzare += 1} //poichè per ogni livello abbimao 6 domande  (da 6 paroole) questa variabile fa da conteggio
            //                            //                            l'if statement mi serve per capire che quando sto nei casi da 0 a 4 allora devo passare a leggere l'elemento successivo dell'array mentre se sto nel caso 5 significa che devo tornare alla dash perchè le domande per questo livello sono finite.
            //                            //                            AL MASSIMO SI DEVE SOLO IMPLEMENTARE UNA VARIABILE DI CONTROLLO CHE PER IL LIVELLO DANGER ZONE DEVE CONTARE FINO A 5 (magri controllo con categoria == "Danger Zone")
            //                            else {
            //                                self.torniamo_alla_dash = false   //cambiando lo state della variabile a false posso triggare la navigatuion che mi riporta alla view iniziale della Dash
            //                            }
            
            //                        })
            //                    )
            //                }
            //
            //                Button(domande_da_usare.errata) {
            //                    showingAlert_sbaliata_wrong = true
            //                }
            //                .alert(isPresented:$showingAlert_sbaliata_wrong) {
            //                    Alert(
            //                        title: Text("Wrong"),
            //                        message: Text("Looks like you need to chech the words and their meaning again"),
            //                        dismissButton: .default(Text("Go back!"))
            //                    )
            //                }
            //
            //
            //            }.frame(maxWidth:320, maxHeight: 65, alignment: .center)
            //                .background(.blue)
            //                .cornerRadius(25)
            //                .font(.title)
            //                .foregroundColor(Color.white)
            
            Spacer()
            
            Text("\(quiz_liv_da_visualizzare + 1)").fontWeight(.thin)
            
            Spacer()
        }
        //    .preferredColorScheme(.dark)
        
        //        }
    }
    
    
    
}

