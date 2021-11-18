//
//  ContentView.swift
//  T'APPost
//
//  Created by Luigi Minniti on 16/11/21.
//

import SwiftUI
import Foundation

var categories = ["Greetings", "Daily life", "Romance", "Danger Zone"]
var levels = ["Chiattillo", "Scugnizzo", "Sarracino", "Cafone"]



struct QuizDash: View{
    
    @State private var unlocked = false
    
    var body: some View{
        
        VStack(spacing: 20){
                   
                    
                    Text("Quiz")
                        .font(.largeTitle)
                        .foregroundColor(Color.blue)
                        .fontWeight(.heavy)
                        .padding(5.0)
//                        .frame(maxWidth: .infinity, alignment: .leading)
                        
                    Spacer()
                      
                        circleShape()
                            
                    Text("Lv. \(levels[0])").italic()
                            
                            Divider()
                            Spacer()
            VStack{
                    Group {
                            Button("\(categories[0])") {
                            }
                
                            Button("\(categories[1])") {
                            }
                            
                            Button("\(categories[2])") {
                            }

                            Button("\(categories[3])") {
                            }

                        }.padding(4).scenePadding(.vertical)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .background(.blue)
                        .cornerRadius(25)
                        .font(.title)
                        .foregroundColor(Color.white)
                  }
//            .disabled(unlocked == false)
            
            
                    Spacer()

                    
                        
                    
//                        .preferredColorScheme(.dark)
                        
                }.padding()
    
}
}

struct QuizDash_Previews: PreviewProvider {
    static var previews: some View {
        QuizDash()
    }
}
//ciao ciao
