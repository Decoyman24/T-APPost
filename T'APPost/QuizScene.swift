//
//  QuizScene.swift
//  T'APPost
//
//  Created by Daniele De Nisi on 17/11/21.
//

import Foundation
import SwiftUI

struct QuizScene: View {
    var body: some View {
        
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
                        Text("a maronn").foregroundColor(Color.black)
                        
                    }
         }
        
        Spacer()
        
        Group{
                    Button("risp1") {
                    }
                    Button("risp2") {
                    }
                    Button("risp3") {
                    }
                
                }.frame(maxWidth:320, maxHeight: 65, alignment: .center)
            .background(.blue)
            .cornerRadius(25)
            .font(.title)
            .foregroundColor(Color.white)
        
        
        
        Spacer()
            
        Text("1/5").fontWeight(.thin)
        
        Spacer()
    }.preferredColorScheme(.dark)
           
    }
    
}

struct QuizScene_Previews: PreviewProvider {
    static var previews: some View {
        QuizScene()
    }
}
