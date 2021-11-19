//
//  CardView.swift
//  T'APPost
//
//  Created by Rosa Cimmino on 19/11/21.
//

import SwiftUI


// view che permette di creare la card nella view di presentazione delle parole per ogni quiz
struct CardView : View {
  
    var parola : Parola
   
    
    var body: some View{
        
        ZStack{
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                            .fill(Color.gray)
            
            VStack (alignment: .leading, spacing: 10){
                Text(parola.nome)
                    .padding(10)
                    .font(.title2.bold().italic())
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

//struct CardView_Previews: PreviewProvider {
//    static var previews: some View {
//        CardView()
//    }
//}
