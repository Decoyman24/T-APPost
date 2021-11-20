//
//  ButtonView.swift
//  T'APPost
//
//  Created by Rosa Cimmino on 19/11/21.
//

import SwiftUI

struct ButtonView : View {
//  view che sostituisce il bottone nella dashboard quiz poichè non funzione un cazzo con ui button
    var livello : String = "dfvsdgs"
    var sbloccato : Bool
    var body: some View{
        
        ZStack{
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                            .fill(Color.blue)
                            .scaledToFit()
            VStack (alignment: .leading, spacing: 10){
               
                Text(livello)
//                    .padding(10)
                    .font(.title2)
                    .foregroundColor(.white)
                    .scaledToFit()
                   
                    
                //                Spacer()
            }
//            .layoutPriority(100)
        }
//        .padding([.top, .horizontal, .leading, .trailing])
    }
}


//struct ButtonView_Previews: PreviewProvider {
//    static var previews: some View {
//        ButtonView()
//    }
//}
