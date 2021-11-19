//
//  Dashboard.swift
//  T'APPost
//
//  Created by Luigi Minniti on 16/11/21.
//

import SwiftUI
import Foundation


struct Dashboard: View {
    
    var nome = "okok"
    var percentuale = 25
    
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
    let badges = ["👋🏼","🤌🏼","🛒","🍕","✊🏼","💋","🤬","👊🏼"]
    
    var body: some View {
        
        VStack{
            
            Text("Dashboard")
                .font(.largeTitle)
                .foregroundColor(Color.blue)
                .fontWeight(.heavy)
                .padding(5.0)
                
            
//            Spacer()
              
                circleShape()
            Text("\(nome)")
                .font(.title)
                .fontWeight(.medium)
                .padding(1)
            Text("Lv. \(levels[0])").italic()
            ProgressView(value: 0.2)
            Text("\(percentuale)%")
            ScrollView{
                
                
            Text("Achievements")
                .font(.title)
                .foregroundColor(Color.blue)
                .fontWeight(.regular)
                .padding(5.0)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Divider()
            
                LazyVGrid(columns: columns, content: {
                    
                    ForEach(achievements, id: \.self){
                        achievement in
                        HStack{
                        
                        Image(systemName: "person")
                          Text(achievement)
                            
                        }
                    }
                })
                        
                        
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
                    
                    ForEach(badges, id: \.self){
                        badge in
                        ZStack{
                        
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.blue, lineWidth: 1)
                            Text(badge)
                                .font(.system(size: 55))
                        }
                    }
                })
            
            }
        
        }.padding()
        
    }
}

struct Dash_Previews: PreviewProvider {
    static var previews: some View {
        Dashboard()
    }
}
