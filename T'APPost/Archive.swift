//
//  Archive.swift
//  T'APPost
//
//  Created by Luigi Minniti on 16/11/21.
//

import SwiftUI
import AVFoundation


struct ArchiveView: View {
    @State var selectedCategory = "Greetings"

    var body: some View {
        //NavigationView che usa i nomi delle parole della lista come link, per poi rimandarti a DetailView (passa come parametro l'intera parola compresa di nome, descrizione e proprietà)
        VStack{
            Spacer()
            Spacer()
            Spacer()
            Text("Archive").font(.title.bold()).foregroundColor(.blue)
            VStack{
                Picker("Category", selection: $selectedCategory){
                    Text("Greetings").tag("Greetings")
                    Text("Daily Life").tag("Daily Life")
                    Text("Romance").tag("Romance")
                    Text("Danger Zone").tag("Danger Zone")
                        
                }.pickerStyle(.segmented)
        NavigationView{
            List(parole) { parola in
                NavigationLink(destination: DetailView(parol: parola)){
                    Text(parola.nome)
                        .fontWeight(.medium)
                }
            }
        }
        }
        }.padding(.horizontal)
    }
}
//View della singola parola dove troverai descrizione, audio ed esempio in una converazione
struct DetailView: View {
    let parol : Parola //la parola con tutti i suoi parametri che abbiamo preso dalla NavigationView
    
    var body: some View {
        VStack{
            Text(parol.descrizione)
        }
        .navigationBarTitle(Text(parol.nome), displayMode: .inline)
    }
}


struct ArchiveView_Previews: PreviewProvider {
    static var previews: some View {
        ArchiveView()
    }
}
