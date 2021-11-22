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
    
    
    
    var body: some View {
        
        switch variabilleAppoggio_categoria_scelta {
            
        case "Greetings":
            switch Quiz_del_livello_da_visualizzare{
            case 0:
                QuizScene(domande_da_usare: greetings[0], quiz_liv_da_visualizzare: $Quiz_del_livello_da_visualizzare, torniamo_alla_dash: $passaggio_view_appoggio)
            case 1:
                QuizScene (domande_da_usare: greetings[1], quiz_liv_da_visualizzare: $Quiz_del_livello_da_visualizzare, torniamo_alla_dash: $passaggio_view_appoggio)
            case 2 :
                QuizScene(domande_da_usare: greetings[2], quiz_liv_da_visualizzare: $Quiz_del_livello_da_visualizzare, torniamo_alla_dash: $passaggio_view_appoggio)
            case 3 :
                QuizScene(domande_da_usare: greetings[3], quiz_liv_da_visualizzare: $Quiz_del_livello_da_visualizzare, torniamo_alla_dash: $passaggio_view_appoggio)
            case 4 :
                QuizScene(domande_da_usare: greetings[4], quiz_liv_da_visualizzare: $Quiz_del_livello_da_visualizzare, torniamo_alla_dash: $passaggio_view_appoggio)
            case 5 :
                QuizScene(domande_da_usare: greetings[5], quiz_liv_da_visualizzare: $Quiz_del_livello_da_visualizzare, torniamo_alla_dash: $passaggio_view_appoggio)
            default :
                //                caso default dello switch. Per sicurezza ho messo quizdash, ma qua non ci deve proprio entrare
                QuizDash()
                //            self.shouldPopToRootView = false
            }
            
            
        case "Daily Life":
            switch Quiz_del_livello_da_visualizzare{
            case 0:
                QuizScene(domande_da_usare: dailylife[0], quiz_liv_da_visualizzare: $Quiz_del_livello_da_visualizzare, torniamo_alla_dash: $passaggio_view_appoggio)
            case 1:
                QuizScene (domande_da_usare: dailylife[1], quiz_liv_da_visualizzare: $Quiz_del_livello_da_visualizzare, torniamo_alla_dash: $passaggio_view_appoggio)
            case 2 :
                QuizScene(domande_da_usare: dailylife[2], quiz_liv_da_visualizzare: $Quiz_del_livello_da_visualizzare, torniamo_alla_dash: $passaggio_view_appoggio)
            case 3 :
                QuizScene(domande_da_usare: dailylife[3], quiz_liv_da_visualizzare: $Quiz_del_livello_da_visualizzare, torniamo_alla_dash: $passaggio_view_appoggio)
            case 4 :
                QuizScene(domande_da_usare: dailylife[4], quiz_liv_da_visualizzare: $Quiz_del_livello_da_visualizzare, torniamo_alla_dash: $passaggio_view_appoggio)
            case 5 :
                QuizScene(domande_da_usare: dailylife[5], quiz_liv_da_visualizzare: $Quiz_del_livello_da_visualizzare, torniamo_alla_dash: $passaggio_view_appoggio)
            default :
                QuizDash()
            }
            
        case "Romance":
            switch Quiz_del_livello_da_visualizzare{
            case 0:
                QuizScene(domande_da_usare: romance[0], quiz_liv_da_visualizzare: $Quiz_del_livello_da_visualizzare, torniamo_alla_dash: $passaggio_view_appoggio)
            case 1:
                QuizScene (domande_da_usare: romance[1], quiz_liv_da_visualizzare: $Quiz_del_livello_da_visualizzare, torniamo_alla_dash: $passaggio_view_appoggio)
            case 2 :
                QuizScene(domande_da_usare: romance[2], quiz_liv_da_visualizzare: $Quiz_del_livello_da_visualizzare, torniamo_alla_dash: $passaggio_view_appoggio)
            case 3 :
                QuizScene(domande_da_usare: romance[3], quiz_liv_da_visualizzare: $Quiz_del_livello_da_visualizzare, torniamo_alla_dash: $passaggio_view_appoggio)
            case 4 :
                QuizScene(domande_da_usare: romance[4], quiz_liv_da_visualizzare: $Quiz_del_livello_da_visualizzare, torniamo_alla_dash: $passaggio_view_appoggio)
            case 5 :
                QuizScene(domande_da_usare: romance[5], quiz_liv_da_visualizzare: $Quiz_del_livello_da_visualizzare, torniamo_alla_dash: $passaggio_view_appoggio)
            default :
                QuizDash()
            }
            
            
        case "Danger Zone": //in questo default deve andare l'ultimo caso ossi la Danger Zone, che non viene intercettate da nessuno dei casi precedenti
            //            il for each non va bene e deve essere sostituito da un ulteriore switch
            switch Quiz_del_livello_da_visualizzare{
            case 0:
                QuizScene(domande_da_usare: dangerzone[0], quiz_liv_da_visualizzare: $Quiz_del_livello_da_visualizzare, torniamo_alla_dash: $passaggio_view_appoggio)
            case 1:
                QuizScene (domande_da_usare: dangerzone[1], quiz_liv_da_visualizzare: $Quiz_del_livello_da_visualizzare, torniamo_alla_dash: $passaggio_view_appoggio)
            case 2 :
                QuizScene(domande_da_usare: dangerzone[2], quiz_liv_da_visualizzare: $Quiz_del_livello_da_visualizzare, torniamo_alla_dash: $passaggio_view_appoggio)
            case 3 :
                QuizScene(domande_da_usare: dangerzone[3], quiz_liv_da_visualizzare: $Quiz_del_livello_da_visualizzare, torniamo_alla_dash: $passaggio_view_appoggio)
            case 4 :
                QuizScene(domande_da_usare: dangerzone[4], quiz_liv_da_visualizzare: $Quiz_del_livello_da_visualizzare, torniamo_alla_dash: $passaggio_view_appoggio)
            case 5 :
                QuizScene(domande_da_usare: dangerzone[5], quiz_liv_da_visualizzare: $Quiz_del_livello_da_visualizzare, torniamo_alla_dash: $passaggio_view_appoggio)
            default :
                QuizDash()
            }
            
        default:
            QuizDash()
        }
    }
}



struct QuizScene: View {
    
    let domande_da_usare : Domandaquiz
    @State private var showingAlertcorretta = false
    @State private var showingAlert_sbaliata = false
    @State private var showingAlert_sbaliata_wrong = false
    
    @Binding var quiz_liv_da_visualizzare : Int
    @Binding var torniamo_alla_dash : Bool //variabile di appoggio, legata alla navigazione, che mi permette di tonrare alla dashboard quando clicco sull'ultimo buttone Next dell'ultima alert per ogni quiz (per livello)
    
    
    
    
    var body: some View {
        //        NavigationView{
        
        VStack(spacing:10){
            Text("Quiz")
                .font(.largeTitle)
                .foregroundColor(Color.blue)
                .fontWeight(.heavy)
                .padding(5.0)
                .frame(maxWidth: .infinity, alignment: .leading)
            Spacer()
            ZStack{
                RoundedRectangle(cornerRadius: 20)
                    .frame(height: 400).foregroundColor(Color.gray)
                
                VStack{
                    Image("buttBack")
                    Text(domande_da_usare.domanda).foregroundColor(Color.black)
                    Text(domande_da_usare.question).foregroundColor(Color.black)
                }
            }
            
            Spacer()
            Group{
                Button(domande_da_usare.sbagliata) {
                    showingAlert_sbaliata = true
                }
                .alert(isPresented:$showingAlert_sbaliata) {
                    Alert(
                        title: Text("Wrong"),
                        message: Text("Looks like you need to check the words and their meaning again"),
                        dismissButton: .default(Text("Try again"))
                    )
                }
                
                
                
                ;
                Button(domande_da_usare.rispCorretta) {
                    showingAlertcorretta = true
                }
                .alert(isPresented:$showingAlertcorretta) {
                    Alert(
                        title: Text("Well done!"),
                        message: Text("You know how to use this word. Try to use it in everyday life"),
                        dismissButton: .default(Text("Next"), action: {
                            if (quiz_liv_da_visualizzare != 5){  //fatto così per ora per avere il codice funzionanate ma se riuscite in modo più pulito cambiate
                                quiz_liv_da_visualizzare += 1} //poichè per ogni livello abbimao 6 domande  (da 6 paroole) questa variabile fa da conteggio
                            //                            l'if statement mi serve per capire che quando sto nei casi da 0 a 4 allora devo passare a leggere l'elemento successivo dell'array mentre se sto nel caso 5 significa che devo tornare alla dash perchè le domande per questo livello sono finite.
                            //                            AL MASSIMO SI DEVE SOLO IMPLEMENTARE UNA VARIABILE DI CONTROLLO CHE PER IL LIVELLO DANGER ZONE DEVE CONTARE FINO A 5 (magri controllo con categoria == "Danger Zone")
                            else {
                                self.torniamo_alla_dash = false   //cambiando lo state della variabile a false posso triggare la navigatuion che mi riporta alla view iniziale della Dash
                            }
                            
                        })
                    )
                    
                }
                
                
                
                Button(domande_da_usare.errata) {
                    showingAlert_sbaliata_wrong = true
                }
                .alert(isPresented:$showingAlert_sbaliata_wrong) {
                    Alert(
                        title: Text("Wrong"),
                        message: Text("Looks like you need to chech the words and their meaning again"),
                        dismissButton: .default(Text("Go back!"))
                    )
                }
                
                
                
                
            }.frame(maxWidth:320, maxHeight: 65, alignment: .center)
                .background(.blue)
                .cornerRadius(25)
                .font(.title)
                .foregroundColor(Color.white)
            
            Spacer()
            
            Text("\(quiz_liv_da_visualizzare + 1)").fontWeight(.thin)
            
            Spacer()
        }
        //    .preferredColorScheme(.dark)
        
        //        }
    }
    
    
    
}

//
//struct QuizScene_Previews: PreviewProvider {
//    static var previews: some View {
//        QuizScene()
//    }
//}
