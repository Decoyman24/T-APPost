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
            VStack(spacing: 20){
                Group {
                            Button(categories[0]){
                        
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
                  }
//            .disabled(unlocked == false)
            
            
                    Spacer()

                    
                        
                    
//                        .preferredColorScheme(.dark)
                        
        }.padding(.horizontal, 30.0)
    
}
}

struct QuizDash_Previews: PreviewProvider {
    static var previews: some View {
        QuizDash()
    }
}
//ciao ciao
