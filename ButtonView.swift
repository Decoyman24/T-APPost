//
//  ButtonView.swift
//  T'APPost
//
//  Created by Rosa Cimmino on 19/11/21.
//


// IMPORTANTE FARE UNA VIEW ANCHE PER UN BOTTONE CHE HA COME COLORE IL BLU OPACO PER QUANOD IL LIVELLO NON è ANCORA SBLOCCATO

import SwiftUI

struct ButtonView : View {
    //  view che sostituisce il bottone nella dashboard quiz poichè non funzione un cazzo con ui button
    var livello : String
    var paddingH : Double
    
    var body: some View{
        
        ZStack{
            VStack (alignment: .leading, spacing: 10){
                Text(livello)
                    .font(.title2)
                    .padding(.horizontal, paddingH)
                    .padding(.vertical, 20)
                    .foregroundColor(.white)
                    .background(Color(UIColor.systemBlue))
                    .cornerRadius(30)
                
                
                
                //                Spacer()
            }
        }
        //        .padding([.top, .horizontal, .leading, .trailing])
    }
}



struct ButtonViewDisabile : View {
    //  view che sostituisce il bottone nella dashboard quiz poichè non funzione un cazzo con ui button
    var livello : String
    var paddingH : Double
    var body: some View{
        
        ZStack{
//            RoundedRectangle(cornerRadius: 20, style: .continuous)
//                .grayscale(0.5)
//                .scaledToFit()
//
            VStack (alignment: .leading, spacing: 10){
                Text(livello)
                    .font(.title2)
                    .padding(.horizontal, paddingH)
                    .padding(.vertical, 20)
                    .foregroundColor(.white)
                    .background(Color(UIColor.systemBlue))
                    .opacity(0.3)
                    .cornerRadius(30)
                
                //                Spacer()
            }
        }
        //        .padding([.top, .horizontal, .leading, .trailing])
    }
}




//struct ButtonView_Previews: PreviewProvider {
//    static var previews: some View {
//        ButtonView()
//    }
//}
