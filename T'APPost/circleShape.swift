//
//  CircleShape.swift
//  ueke2
//
//  Created by Daniele De Nisi on 12/11/21.
//
//  Questa è la struct che crea la shape della propic, in foto Mario Rossi, in attesa delle vere immagini.

import SwiftUI

struct circleShape: View {
    var body: some View {
        Image ("MarioRossi-1")
            .resizable()
            .frame(width: 150, height: 150)
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.blue, lineWidth: 2)
            }
        
    }
}

struct circleShape_Previews: PreviewProvider {
    static var previews: some View {
        circleShape()
    }
}
