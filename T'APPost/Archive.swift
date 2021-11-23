//
//  Archive.swift
//  T'APPost
//
//  Created by Luigi Minniti on 16/11/21.
//

import SwiftUI
import AVFoundation



struct ArchiveView: View {
    let rows = [
        GridItem(spacing: 90),
        GridItem(spacing: 90)
    ]
    @State var selezionato = 0
    let livello1 : [Parola] = parole.filter{$0.categoria == "Greetings"}
    let livello2 : [Parola] = parole.filter{$0.categoria == "Daily Life"}
    let livello3 : [Parola] = parole.filter{$0.categoria == "Romance"}
    let livello4 : [Parola] = parole.filter{$0.categoria == "Danger Zone"}
    let badge1 : [Badge] = badges.filter{$0.category == "Greetings"}
    let badge2 : [Badge] = badges.filter{$0.category == "Daily Life"}
    let badge3 : [Badge] = badges.filter{$0.category == "Romance"}
    let badge4 : [Badge] = badges.filter{$0.category == "Danger Zone"}
    

    var body: some View {
        //NavigationView che usa i nomi delle parole della lista come link, per poi rimandarti a DetailView (passa come parametro l'intera parola compresa di nome, descrizione e proprietà)
        NavigationView{
            VStack(spacing: 20){
                Text("Words and Badges")
                    .font(.title)
                    .foregroundColor(Color.blue)
                    .fontWeight(.regular)
                    .padding(5.0)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Picker(selection: $selezionato, label: Text("segmented bar")) {
                    Text("Greetings").tag(0)
                    Text("Daily Life").tag(1)
                    Text("Romance").tag(2)
                    Text("Danger Zone").tag(3)
                }.pickerStyle(.segmented)
                
                
                switch selezionato{
                case 0 :
                    if (ourUser.greetingsUnlocked){
                        VStack(){
//                        Divider()
//                            ZStack{
                                Text("Congratulations, you unlocked the Greetings quiz!")
                                    .foregroundColor(.blue)
                                    .multilineTextAlignment(.center)
                                BadgeView(badgio: badges[0].icon, greys: badges[0].greyness)
//                                Text("Here's the words you used in the quiz:")
//                                    .foregroundColor(.blue)
//                                    .multilineTextAlignment(.center)
//                                    .offset(x: 0, y: 60)
//                            Spacer()
//                        }
                        }
                        List (livello1) { parola in
                            NavigationLink(destination: DetailView(parol: parola)){
                                Text(parola.nome)
                                    .fontWeight(.medium)
                            }.navigationBarTitle("Collection")
                        }

                    }
                    else {
                        Spacer()
                        Text("You haven't completed the Greetings quiz yet!")
                            .padding([.horizontal, .vertical])
                            .multilineTextAlignment(.center)
                            .font(.title)
                            .navigationBarTitle("Collection")
                        
                        Spacer()
                    }
                    
                    
                case 1:
                    if (ourUser.dailyLifeUnlocked){
                        
                            VStack{
                                Text("Congratulations, you unlocked the Daily Life quiz!")
                                    .foregroundColor(.blue)
                                    .multilineTextAlignment(.center)
                                BadgeView(badgio: badges[1].icon, greys: badges[1].greyness)
                            }
                        
                        List (livello2) { parola in
                            NavigationLink(destination: DetailView(parol: parola)){
                                Text(parola.nome)
                                    .fontWeight(.medium)
                            }.navigationBarTitle("Archive")
                        }
                    }
                    else {
                        Spacer()
                        Text("You haven't completed the \nDaily Life quiz yet!")
                            .padding([.horizontal, .vertical])
                            .multilineTextAlignment(.center)
                            .font(.title)
                            .navigationBarTitle("Collection")
                        
                        Spacer()
                    }
                    
                case 2:
                    if (ourUser.romanceUnlocked){
                        
                            VStack{
                                Text("Congratulations, you unlocked the Romance quiz!")
                                    .foregroundColor(.blue)
                                    .multilineTextAlignment(.center)
                                BadgeView(badgio: badges[2].icon, greys: badges[2].greyness)
                            }
                        List (livello3) { parola in
                            NavigationLink(destination: DetailView(parol: parola)){
                                Text(parola.nome)
                                    .fontWeight(.medium)
                            }.navigationBarTitle("Collection")
                        }
                    }
                    else {
                        Spacer()
                        Text("You haven't completed the \nRomance quiz yet!")
                            .padding([.horizontal, .vertical])
                            .multilineTextAlignment(.center)
                            .font(.title)
                            .navigationBarTitle("Collection")
                        
                        Spacer()
                    }
                    
                default:
                    if (ourUser.dangerZoneUnlocked){
                        
                            VStack{
                                Text("Congratulations, you unlocked the Danger Zone quiz!")
                                    .foregroundColor(.blue)
                                    .multilineTextAlignment(.center)
                                BadgeView(badgio: badges[3].icon, greys: badges[3].greyness)
                            }
                        List (livello4) { parola in
                            NavigationLink(destination: DetailView(parol: parola)){
                                Text(parola.nome)
                                    .fontWeight(.medium)
                            }.navigationBarTitle("Collection")
                        }
                    }
                    else {
                        Spacer()
                        Text("You haven't completed \nthe Danger Zone quiz yet!")
                            .padding([.horizontal, .vertical])
                            .multilineTextAlignment(.center)
                            .font(.title)
                            .navigationBarTitle("Collection")
                        
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
        VStack(spacing: 20){
            Spacer()
            Text (parol.nome)
                .font(.title2.bold().italic())
                .frame(maxWidth: .infinity, alignment: .leading)
            Text(parol.descrizione)
            Spacer()
            Spacer()
        }
        .padding(20)
        .navigationBarTitle(Text(parol.categoria), displayMode: .inline)
    }
}


struct ArchiveView_Previews: PreviewProvider {
    static var previews: some View {
        ArchiveView()
    }
}
