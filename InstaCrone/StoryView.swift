//
//  StoryView.swift
//  InstaCrone
//
//  Created by Yuu Shimizu on 2021/07/15.
//

import SwiftUI

struct StoryView: View {
    let people: [Person]

    var body: some View {
        VStack(alignment: .leading) {
            LazyHStack {
                VStack(alignment: .center) {
                    Image(systemName: "person.crop.circle.badge.checkmark")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 65)
                        .rotation3DEffect(
                            .degrees(180),
                            axis: (x: 0, y: 1, z: 0))
                        .foregroundColor(.gray)
                        .opacity(0.5)
                        .colorInvert()
                    
                     Text("Your Story")
                        .font(.system(size: 12))
                }
                .padding(.trailing, 15)
                
                ForEach(people, id: \.id) { person in
                    VStack(alignment: .center) {
                        Image(person.name)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 55)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            .overlay(Circle().stroke(Color.black, lineWidth: 2))
                        
                        Text(person.name)
                            .font(.system(size: 12))
                    }
                    .padding(.trailing, 10)
                }
                .padding(.top, 1)
            }
        }
    }
}
