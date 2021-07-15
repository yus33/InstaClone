//
//  PostView.swift
//  InstaCrone
//
//  Created by Yuu Shimizu on 2021/07/15.
//

import SwiftUI

struct PostView: View {
    var person: Person
    
    var body: some View {
        HStack {
            Image(person.name)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 30)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .overlay(Circle().stroke(Color.black, lineWidth: 2))
            
            VStack(alignment: .leading) {
                Text(person.name)
                    .font(.system(size: 15))
                Text(person.location)
                    .font(.system(size: 15))
            }
            
            Spacer()
        }
        .padding([.top, .leading], 10)
    }
}
