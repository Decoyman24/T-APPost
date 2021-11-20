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
                .frame(maxHeight: .infinity, alignment: .bottom)
        }
        
    }
    
}


//////////////////////////////////////////////////////////////////////////////////////////////////////////////////

struct QuizDash: View{
    var categories = ["Greetings", "Daily Life", "Romance", "Danger Zone"]
    
    var body: some View{
        NavigationView{
            VStack(spacing: 10){
                Text("Quiz")
                    .font(.largeTitle)
                    .foregroundColor(Color.blue)
                    .fontWeight(.heavy)
                    .padding()
                Spacer()
                
                circleShape()
                
                Text("Your level: \(ourUser.userTitle)").italic()
                
                Divider()
                Spacer()
                
                VStack(spacing:10){
                    Group {
                        NavigationLink(destination: Intro_Quiz(categoriaScelta: categories[0])) {
                            ButtonView(livello: categories[0])
                        }
                        NavigationLink(destination: Intro_Quiz(categoriaScelta: categories[1])) {
                            ButtonView(livello: categories[1])
                        }
                        NavigationLink(destination: Intro_Quiz(categoriaScelta: categories[2])) {
                            ButtonView(livello: categories[2])
                        }
                        NavigationLink(destination: Intro_Quiz(categoriaScelta: categories[3])) {
                            ButtonView(livello: categories[3])
                        }
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
                Spacer()
                Spacer()
                Spacer()
                
            }.padding(.horizontal, 30.0)
            
        }
    }
}


//view della pagina di presentazione per ciascun livello con le card che descrivono le parole

struct Intro_Quiz: View {
    var categoriaScelta: String
    
    var body: some View {
        NavigationView{
            let filtrato : [Parola] = parole.filter{$0.categoria == categoriaScelta}
            ZStack{
                VStack{
                    Text("Here's some phrases and words you're going to need in order to solve this quiz. Take your time reading and understanding them.").padding(.horizontal)
                    ScrollView(.vertical){
                        VStack(alignment: .center, spacing: 10){
                            ForEach (filtrato) { parolina in
                                CardView(parola: parolina)
                            }
                            
                        }.frame(maxHeight: .infinity)
                    }.navigationTitle("\(categoriaScelta) quiz").padding(.horizontal).font(.title)
                }
                
                NavigationLink(destination: QuizScene(parole_livello: filtrato)) {
                    QuizButton()
                }
            }
        }
    }
}
///
///
///

struct QuizDash_Previews: PreviewProvider {
    static var previews: some View {
        QuizDash()
    }
}


