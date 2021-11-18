//
//  ContentView.swift
//  T'APPost
//
//  Created by Luigi Minniti on 16/11/21.
//

import SwiftUI
import Foundation



struct QuizDash: View{
    
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
                            
            Text("Lv. \(ourUser.userTitle)").italic()
                            
                            Divider()
                            Spacer()
            VStack(spacing: 20){
                    Group {
                            Button("\(categories[0])") {
                            }.disabled(ourUser.greetingsUnlocked == false)
                
                            Button("\(categories[1])") {
                            }.disabled(ourUser.dailyLifeUnlocked == false)
                            
                            Button("\(categories[2])") {
                            }.disabled(ourUser.romanceUnlocked == false)

                            Button("\(categories[3])") {
                            }.disabled(ourUser.dangerZoneUnlocked == false)
                        }
                        .padding(10).scenePadding(.vertical)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .background(Color(UIColor.systemBlue))
                        .cornerRadius(30)
                        .font(.title2)
                        .foregroundColor(Color.white)
                  }
            
            
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
