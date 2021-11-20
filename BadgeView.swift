//
//  BadgeView.swift
//  T'APPost
//
//  Created by Luigi Minniti on 19/11/21.
//

import SwiftUI

struct BadgeView: View {
    var badgio: String
    var greys: Double
    var body: some View {
        
        ZStack{
        
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.blue, lineWidth: 1)
            Text(badgio)
                .font(.system(size: 55))
                .grayscale(greys)
        }
    }
}

//struct BadgeView_Previews: PreviewProvider {
//    static var previews: some View {
//        BadgeView()
//    }
//}
