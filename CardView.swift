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
                .fill(Color(UIColor.systemGray6))
           
                
            
            VStack (alignment: .leading, spacing: 10){
                
                Label("\(parola.nome)", systemImage: "")
                    .padding(10)
                    .font(.title2.bold().italic())
                    .foregroundColor(.black)
                
                //                Spacer()
                Label("\(parola.descrizione)", systemImage: "")
                    .padding(10)
                    .multilineTextAlignment(.leading)
                    .font(.body)
                    
                
                Text(parola.esempio)
                    .padding(10)
                    .multilineTextAlignment(.leading)
                    .font(.body.italic())
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Spacer()
            }
            //            .layoutPriority(100)
        }.padding([.top, .horizontal, .leading, .trailing])
            
        
    }
}

//struct CardView_Previews: PreviewProvider {
//    static var previews: some View {
//        CardView()
//    }
//}
