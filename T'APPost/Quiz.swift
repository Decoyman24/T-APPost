//
//  ContentView.swift
//  T'APPost
//
//  Created by Luigi Minniti on 16/11/21.
//

import SwiftUI
import Foundation


///////////////////////////////////////////////////////////////////////////////////////////////

//view per il bottone del quiz
struct QuizButton : View {
    var body: some View {
        
        VStack (alignment: .center, spacing: 10){
            Text("Take the Quiz")
            
                .fontWeight(.regular)
                .font(.system(size: 22))
                .padding(.horizontal, 50)
                .padding(.vertical, 15)
                .background(Color(UIColor.systemBlue))
                .cornerRadius(60)
                .foregroundColor(.white)
                .shadow(color: Color(UIColor.systemBlue), radius: 5, x: 0, y: 0)
                .frame(maxWidth: .infinity, alignment: .bottom)
            
        }
        
    }
    
}


//////////////////////////////////////////////////////////////////////////////////////////////////////////////////

struct QuizDash: View{
    var categories = ["Greetings", "Daily Life", "Romance", "Danger Zone"]
    
    @State var isActive : Bool = false
    @State var isActive1 : Bool = false
    @State var isActive2 : Bool = false
    @State var isActive3 : Bool = false
    // mi servirà per passare tra le views con navigation sovrapporre le barre
    
    
    @State var livello_sbloccato : Int = 0

    
    var body: some View{
        NavigationView{
            VStack(spacing:10){
                Text("Quiz")
                    .font(.largeTitle)
                    .foregroundColor(Color(UIColor.systemBlue))
                    .fontWeight(.heavy)
                Spacer()
//                circleShape()
                
                Image (ourUser.profilePic)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .overlay {
                        Circle().stroke(.blue, lineWidth: 2)
                    }
                
                Text("\(ourUser.userTitle)").italic()
                
                ProgressView(value: Double(ourUser.progress)/100.0)
                
                Text("\(ourUser.progress)%")
//                Divider()
                
                VStack(spacing: 20){
                    Group {
                        NavigationLink(destination: Intro_Quiz(categoriaScelta: categories[0], rootIsActive: self.$isActive, livelloSbloccato: $livello_sbloccato), isActive: self.$isActive) {
                            ButtonView(livello: categories[0], paddingH: 90)
                        }
                        .isDetailLink(false)
                        
                      
                    NavigationLink(destination: Intro_Quiz(categoriaScelta: categories[1], rootIsActive: self.$isActive1, livelloSbloccato: $livello_sbloccato), isActive: self.$isActive1) {
                        if (livello_sbloccato < 1) {
                            ButtonViewDisabile(livello: categories[1], paddingH: 90)
                        } else {
                            ButtonView(livello: categories[1], paddingH: 90)
                        }
                    }
                        .isDetailLink(false)
                        .disabled(livello_sbloccato < 1)
                       
//                        inizio prova
                        
                        NavigationLink(destination: Intro_Quiz(categoriaScelta: categories[2], rootIsActive: self.$isActive2, livelloSbloccato: $livello_sbloccato), isActive: self.$isActive2) {
                            if (livello_sbloccato<2) {
                                ButtonViewDisabile(livello: categories[2], paddingH: 90)
                                
                            }else {
                    ButtonView(livello: categories[2], paddingH: 90)
                        }
                        }
                        .isDetailLink(false)
                        .disabled(livello_sbloccato < 2)
                        
                        
//                        fine prova
                        
                        
                        
//                        NavigationLink(destination: Intro_Quiz(categoriaScelta: categories[2], rootIsActive: self.$isActive2, livelloSbloccato: $livello_sbloccato), isActive: self.$isActive2) {
//                            ButtonView(livello: categories[2])
//                        }
//                        .isDetailLink(false)
//                        .disabled(livello_sbloccato < 2)
                        
                        NavigationLink(destination: Intro_Quiz(categoriaScelta: categories[3], rootIsActive: self.$isActive3, livelloSbloccato: $livello_sbloccato), isActive: self.$isActive3) {
                            if (livello_sbloccato<3) {
                                ButtonViewDisabile(livello: categories[3], paddingH: 70)
                                
                            } else {
                                ButtonView(livello: categories[3], paddingH: 70)
                        }
                        }
                        .isDetailLink(false)
                        .disabled(livello_sbloccato < 3)
                        
//                   fine prova
                        
                        
                        
//                        NavigationLink(destination: Intro_Quiz(categoriaScelta: categories[2], rootIsActive: self.$isActive2),isActive: self.$isActive2 ) {
//                            ButtonView(livello: categories[2])
//                        }
//                        .isDetailLink(false)
//                        .disabled(ourUser.romanceUnlocked == false)
//
//
//                        NavigationLink(destination: Intro_Quiz(categoriaScelta: categories[3], rootIsActive: self.$isActive3), isActive: self.$isActive3) {
//                            ButtonView(livello: categories[3])
//                        }
//                        .isDetailLink(false)
//                        .disabled(ourUser.dangerZoneUnlocked == false)
                        
                        
                    }
                    
//                    .padding(10).scenePadding(.vertical)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .cornerRadius(30)
                    .font(.title2)
                    .foregroundColor(Color.white)
                    //            .disabled(unlocked == false)
                    Spacer()
                }
                //                        .preferredColorScheme(.dark)
                
            }.padding(.horizontal)
            
    
        }
    }
}


//view della pagina di presentazione per ciascun livello con le card che descrivono le parole

struct Intro_Quiz: View {
    var categoriaScelta: String
    @Binding var rootIsActive : Bool // variabile che prendo dalla view quizDAsh che mi serve per continuare con la navigazione
    
    @Binding var livelloSbloccato : Int
    var body: some View {
        //        NavigationView{
        let filtrato : [Parola] = parole.filter{$0.categoria == categoriaScelta}
        ZStack{
            VStack{
                Text("Here's some phrases and words you're going to need.").padding(.horizontal)
                    .font(.subheadline)
                ZStack{
                ScrollView(.vertical){
                    VStack(alignment: .center, spacing: 10){
                       
                        ForEach (filtrato) { parolina in
                            CardView(parola: parolina)
                                
                        }
                        
                    }.frame()
                        
                }.navigationTitle("\(categoriaScelta)").padding(.horizontal).font(.title)
                
            }
            //                questa view chiamata loading mi permette poi di switchare le views in base al quiz che voglio fare per ogni livello in base alla categoria che mi viene passata
                NavigationLink(destination: LoadingViewQuiz(variabilleAppoggio_categoria_scelta: categoriaScelta, passaggio_view_appoggio: self.$rootIsActive, liv_sbloccato: $livelloSbloccato)) {
                QuizButton()
            }
            .isDetailLink(false)
            .navigationBarTitle("bho")
            }
            
            
            //                NavigationLink(destination: QuizScene(parole_livello: filtrato)) {
            //                    QuizButton()
            //                }
        }
    }
    //        }
}

///
///
///

struct QuizDash_Previews: PreviewProvider {
    static var previews: some View {
        QuizDash()
    }
}


