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
            
                .fontWeight(.bold)
                .font(.system(size: 22))
                .padding()
                .background(Color.blue)
                .cornerRadius(40)
                .foregroundColor(.white)
                .padding(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 40)
                        .stroke(Color.blue, lineWidth: 5)
                )
                .frame(alignment: .bottom)
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
    
    var body: some View{
        NavigationView{
            VStack(){
                Text("Quiz")
                    .font(.largeTitle)
                    .foregroundColor(Color.blue)
                    .fontWeight(.heavy)
                Spacer()
                circleShape()
                
                Text("Your level: \(ourUser.userTitle)").italic()
                
                Divider()
                Spacer()
                
                VStack(spacing:10){
                    Group {
                        NavigationLink(destination: Intro_Quiz(categoriaScelta: categories[0], rootIsActive: self.$isActive), isActive: self.$isActive) {
                            ButtonView(livello: categories[0])
                        }
                        .isDetailLink(false)
                        
                        
                        NavigationLink(destination: Intro_Quiz(categoriaScelta: categories[1], rootIsActive: self.$isActive1), isActive: self.$isActive1) {
                            ButtonView(livello: categories[1])
                        }
                        .isDetailLink(false)
                        .disabled(ourUser.dailyLifeUnlocked == false)
                        
                        
                        NavigationLink(destination: Intro_Quiz(categoriaScelta: categories[2], rootIsActive: self.$isActive2),isActive: self.$isActive2 ) {
                            ButtonView(livello: categories[2])
                        }
                        .isDetailLink(false)
                        .disabled(ourUser.romanceUnlocked == false)
                        
                        
                        NavigationLink(destination: Intro_Quiz(categoriaScelta: categories[3], rootIsActive: self.$isActive3), isActive: self.$isActive3) {
                            ButtonView(livello: categories[3])
                        }
                        .isDetailLink(false)
                        .disabled(ourUser.dangerZoneUnlocked == false)
                    }
                    
                    .padding(20).scenePadding(.vertical)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .background(Color(UIColor.systemBlue))
                    .cornerRadius(30)
                    .font(.title2)
                    .foregroundColor(Color.white)
                    //            .disabled(unlocked == false)
                    Spacer()
                }
                //                        .preferredColorScheme(.dark)
                
            }.padding(.horizontal, 30.0)
            
        }
    }
}


//view della pagina di presentazione per ciascun livello con le card che descrivono le parole

struct Intro_Quiz: View {
    var categoriaScelta: String
    @Binding var rootIsActive : Bool // variabile che prendo dalla view quizDAsh che mi serve per continuare con la navigazione
    
    var body: some View {
        //        NavigationView{
        let filtrato : [Parola] = parole.filter{$0.categoria == categoriaScelta}
        ZStack{
            VStack{
                Text("Here's some phrases and words you're going to need in order to solve this quiz. Take your time reading and understanding them.").padding(.horizontal)
                ZStack{
                ScrollView(.vertical){
                    VStack(alignment: .center, spacing: 10){
                       
                        ForEach (filtrato) { parolina in
                            CardView(parola: parolina)
                        }
                        
                    }.frame(maxHeight: .infinity)
                }.navigationTitle("\(categoriaScelta) quiz").padding(.horizontal).font(.title)
                
            }
            //                questa view chiamata loading mi permette poi di switchare le views in base al quiz che voglio fare per ogni livello in base alla categoria che mi viene passata
            NavigationLink(destination: LoadingViewQuiz(variabilleAppoggio_categoria_scelta: categoriaScelta, passaggio_view_appoggio: self.$rootIsActive)) {
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


