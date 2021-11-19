//
//  ButtonView.swift
//  T'APPost
//
//  Created by Rosa Cimmino on 19/11/21.
//

import SwiftUI

struct ButtonView : View {
  
    var livello : String 
       
    var body: some View{
        
        ZStack{
            Spacer()
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                            .fill(Color.blue)
                            .scaledToFit()
            VStack (alignment: .leading, spacing: 10){
                Spacer()
                Text(livello)
                    .padding(10)
                    .font(.title2)
                    .foregroundColor(.white)
                
                    
                //                Spacer()
            }
//            .layoutPriority(100)
        }
        .padding([.top, .horizontal, .leading, .trailing])
    }
}


//struct ButtonView_Previews: PreviewProvider {
//    static var previews: some View {
//        ButtonView()
//    }
//}
