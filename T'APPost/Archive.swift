//
//  Archive.swift
//  T'APPost
//
//  Created by Luigi Minniti on 16/11/21.
//

import SwiftUI
import AVFoundation



struct ArchiveView: View {
    @State var selezionato = 0
    @ObservedObject var ourUser : Utente
    let livello1 : [Parola] = parole.filter{$0.categoria == "Greetings"}
    let livello2 : [Parola] = parole.filter{$0.categoria == "Daily Life"}
    let livello3 : [Parola] = parole.filter{$0.categoria == "Romance"}
    let livello4 : [Parola] = parole.filter{$0.categoria == "Danger Zone"}
    
    var body: some View {
        //NavigationView che usa i nomi delle parole della lista come link, per poi rimandarti a DetailView (passa come parametro l'intera parola compresa di nome, descrizione e proprietà)
        
        
        NavigationView{
            VStack{
                
                Picker(selection: $selezionato, label: Text("segmented bar")) {
                    Text("Greetings").tag(0)
                    Text("Daily Life").tag(1)
                    Text("Romance").tag(2)
                    Text("Danger Zone").tag(3)
                }
                .pickerStyle(.segmented)
                
                
                switch selezionato {
                    
                case 0 :
                    if (ourUser.greetingsUnlocked){
                    List (livello1) { parola in
                        NavigationLink(destination: DetailView(parol: parola)){
                            Text(parola.nome)
                                .fontWeight(.medium)
                        }.navigationBarTitle("Archive")
                        }
                    }
                        else {
                            Spacer()
                            Text("You haven't completed the Greetings quiz yet!")
                                .padding([.horizontal, .vertical])
                                .multilineTextAlignment(.center)
                                .font(.title)
                                .navigationBarTitle("Archive")
                                
                            Spacer()
                        }
                    
                    
                case 1:
                    if (ourUser.dailyLifeUnlocked){
                        
                    List (livello2) { parola in
                        NavigationLink(destination: DetailView(parol: parola)){
                            Text(parola.nome)
                                .fontWeight(.medium)
                        }.navigationBarTitle("Archive")
                    }
                    }
                    else {
                        Spacer()
                        Text("You haven't completed the Daily Life quiz yet!")
                            .padding([.horizontal, .vertical])
                            .multilineTextAlignment(.center)
                            .font(.title)
                            .navigationBarTitle("Archive")
                        Spacer()
                    }
                    
                case 2:
                    if (ourUser.romanceUnlocked){
                    List (livello3) { parola in
                        NavigationLink(destination: DetailView(parol: parola)){
                            Text(parola.nome)
                                .fontWeight(.medium)
                        }.navigationBarTitle("Archive")
                    }
                    }
                    else {
                        Spacer()
                        Text("You haven't completed the Romance quiz yet!")
                            .padding([.horizontal, .vertical])
                            .multilineTextAlignment(.center)
                            .font(.title)
                            .navigationBarTitle("Archive")
                            
                        Spacer()
                    }
                    
                default:
                    if (ourUser.dangerZoneUnlocked){
                    List (livello4) { parola in
                        NavigationLink(destination: DetailView(parol: parola)){
                            Text(parola.nome)
                                .fontWeight(.medium)
                        }.navigationBarTitle("Archive")
                    }
                    }
                    else {
                        Spacer()
                        Text("You haven't completed the Danger Zone quiz yet!")
                            .padding([.horizontal, .vertical])
                            .multilineTextAlignment(.center)
                            .font(.title)
                            .navigationBarTitle("Archive")
                            
                        Spacer()
                    }
                }
            }
        }.padding()
        
    }
}

//View della singola parola dove troverai descrizione, audio ed esempio in una converazione
struct DetailView: View {
    let parol : Parola //la parola con tutti i suoi parametri che abbiamo preso dalla NavigationView
    
    var body: some View {
        VStack{
            Spacer()
            Text (parol.nome)
                .font(.title2.bold().italic())
                .frame(maxWidth: .infinity, alignment: .leading)
            Text(parol.descrizione)
            Spacer()
            Spacer()
        }
        .navigationBarTitle(Text(parol.categoria), displayMode: .inline)
    }
}


//struct ArchiveView_Previews: PreviewProvider {
//    static var previews: some View {
//        ArchiveView()
//    }
//}
