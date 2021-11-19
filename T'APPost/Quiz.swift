//
//  ContentView.swift
//  T'APPost
//
//  Created by Luigi Minniti on 16/11/21.
//

import SwiftUI
import Foundation

//struct Category : Identifiable {
//    var id = UUID()
//    var name: String
//}
//
//    var categories : [Category] = [
//    Category(name: "Greetings"),
//    Category(name: "Daily Life"),
//    Category(name:"Romance "),
//    Category(name:"Danger Zone")
//    ]
//
var categories = ["Greetings", "Daily Life", "Romance", "Danger Zone"]
    
var levels = ["Chiattillo", "Scugnizzo", "Sarracino", "Cafone"]

//card per la presentazione ad ogni livello
struct CardView : View {
  
    var parola : Parola
   
    
    var body: some View{
        
        ZStack{
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                            .fill(Color.gray)
            
            VStack (alignment: .leading, spacing: 10){
                Spacer()
                Text(parola.nome)
                    .padding(10)
                    .font(.title2.bold())
                    .foregroundColor(.black)
                    
//                Spacer()
                Text(parola.descrizione)
                    .padding(10)
                        .multilineTextAlignment(.leading)
                        .font(.body)
                        
                    Spacer()
            }
//            .layoutPriority(100)
        }
        .padding([.top, .horizontal, .leading, .trailing])
    }
}

///////////////////////////////////////////////////////////////////////////////////////////////

//  style bottone per il quiz ////////////////////////////////////////////////////////////
struct GrowingButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
           .background(Color.blue)
            .foregroundColor(.white)
            .clipShape(Capsule())
            .scaleEffect(configuration.isPressed ? 1.2 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
    }
}
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


struct QuizDash: View{
    
    @State private var unlocked = false

    
    var body: some View{
        
        VStack(spacing: 10){
                   
                    
                    Text("Quiz")
                        .font(.largeTitle)
                        .foregroundColor(Color.blue)
                        .fontWeight(.heavy)
                        .padding()
//                        .frame(maxWidth: .infinity, alignment: .leading)
                        
            Spacer()
                      
                        circleShape()
                            
                    Text("Lv. \(levels[0])").italic()
                            
                            Divider()
                            Spacer()
            VStack(spacing:20){
                    Group {
                        Button(action: {}) {
                                Text(categories[0])
                            }

                            Button("\(categories[1])") {
                            }

                            Button("\(categories[2])") {
                            }

                            Button("\(categories[3])") {
                            }
                        }

                        .padding(10).scenePadding(.vertical)
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


//view della pagina di presentazione per ciascun livello con le card che descrivono le parole

struct Intro_Quiz: View {
   var categoriaScelta: String
    
    var body: some View {
        let filtrato : [Parola] = parole.filter{$0.categoria == categoriaScelta}
        ZStack{
        
        VStack{
            NavigationView {
                ScrollView(.vertical){
                    
               
                    VStack(alignment: .center, spacing: 10){
                        
                        ForEach (filtrato) { parolina in
                            
                            CardView(parola: parolina)
                        }
                        
        }.frame(maxWidth: .infinity) //fine vstack
                }
                
                
                    
                           .navigationTitle("Greetings")
                           .toolbar {
                               ToolbarItem(placement: .navigationBarLeading) {
                                   Button("Back") {
                    
                                       print("premuto back")
                               }
                           }
                   }
                
            }
        
            
            
        } //fine seconda vstack
        
           
        Button(action: {
                  print("button pressed")

                }) {
                    
                   Text ("Take the Quiz")
                        .font(.title3.bold())
                }
                .buttonStyle(GrowingButton())
                .background(
                            RoundedRectangle(cornerRadius: 25)
                                .fill(Color.blue)
                                .shadow(color: .gray, radius: 2, x: 2, y: 2)
                    )
                .frame(maxHeight: .infinity,  alignment: .bottom)
    }
        
}
}


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///
///
///

struct QuizDash_Previews: PreviewProvider {
    static var previews: some View {
        QuizDash()
    }
}

