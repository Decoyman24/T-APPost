//
//  CardView.swift
//  T'APPost
//
//  Created by Rosa Cimmino on 19/11/21.
//

import SwiftUI

struct CardView : View {
  
    var parola : Parola
   
    
    var body: some View{
        
        ZStack{
            Spacer()
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

//struct CardView_Previews: PreviewProvider {
//    static var previews: some View {
//        CardView()
//    }
//}
