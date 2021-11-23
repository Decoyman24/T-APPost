//
//  Dashboard.swift
//  T'APPost
//
//  Created by Luigi Minniti on 16/11/21.
//

import SwiftUI
import Foundation


struct Dashboard: View {
    
    let columns = [
        GridItem(spacing: 150),
        GridItem(spacing: 150)]
    
    let rows = [
        GridItem(spacing: 90),
        GridItem(spacing: 90)
    ]
    
    let achievements = [
        "a","b","c","d","e","f"
    ]
    
    var body: some View {
        
        VStack{
            
            Text("Dashboard")
                .font(.largeTitle)
                .foregroundColor(Color.blue)
                .fontWeight(.heavy)
                .padding(5.0)
            
            
            //            Spacer()
            
//            circleShape()
 
            Image (ourUser.profilePic)
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
                .clipShape(Circle())
                .overlay {
                    Circle().stroke(.blue, lineWidth: 2)
                }
            
            Text("Your level is:")
                .font(.title)
                .fontWeight(.medium)
                .padding(1)
            Text("\(ourUser.userTitle)").italic()
//            ProgressView(value: perc)
//            Text("\(ourUser.progress)%")
            ScrollView{
                
                //
                //            Text("Achievements")
                //                .font(.title)
                //                .foregroundColor(Color.blue)
                //                .fontWeight(.regular)
                //                .padding(5.0)
                //                .frame(maxWidth: .infinity, alignment: .leading)
                //
                //            Divider()
                //
                //                LazyVGrid(columns: columns, content: {
                //
                //                    ForEach(achievements, id: \.self){
                //                        achievement in
                //                        HStack{
                //
                //                        Image(systemName: "person")
                //                          Text(achievement)
                //
                //                        }
                //                    }
                //                })
                
                
                Text("Badges")
                    .font(.title)
                    .foregroundColor(Color.blue)
                    .fontWeight(.regular)
                    .padding(5.0)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Divider()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                LazyHGrid(rows: rows, content: {
                    
                    ForEach(badges, id:\.self) { badge in
                        BadgeView(badgio: badge.icon, greys: badge.greyness)
                    }
                }
                )
            }
        }.padding()
    }
}

struct Dash_Previews: PreviewProvider {
    static var previews: some View {
        Dashboard().preferredColorScheme(.light)
    }
}

