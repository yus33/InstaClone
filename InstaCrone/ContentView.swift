//
//  ContentView.swift
//  InstaCrone
//
//  Created by Yuu Shimizu on 2021/07/13.
//

import SwiftUI

struct ContentView: View {
    let people: [Person] = [
        Person(name: "edoman", image: "paris", location: "paris", like: "uketsuke"),
        Person(name: "sakaya", image: "paris2", location: "paris", like: "edoman"),
        Person(name: "uketsuke", image: "tokyo-tower", location: "Tokyo-Tower", like: "sakaya"),
    ]
    
    var body: some View {
        GeometryReader { geometry in
            let colWidth = geometry.size.width / 2.5
            
            TabView {
                NavigationView {
                    VStack {
                        NavView(colWidth: colWidth)
                        
                        ScrollView {
                            StoryView(people: people)
                            LazyVStack(alignment: .leading) {
                                ForEach(people, id: \.id) { person in
                                    PostView(person: person)
                                    
                                    Image(person.image)
                                        .resizable()
                                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                    
                                    LazyVGrid(columns: [
                                        GridItem(.fixed(colWidth)),
                                        GridItem(.fixed(colWidth)),
                                        GridItem(.fixed(colWidth))
                                    ]) {
                                        HStack{
                                            Image(systemName: "heart")
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .frame(width: 25)
                                                .padding(.trailing, 10)
                                                                        
                                            Image(systemName: "paperplane")
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .frame(width: 25)
                                                .padding(.trailing, 10)
                                            
                                            Spacer()
                                        }
                                    }
                                    .padding(.leading, 10)
                                    
                                    LazyVGrid(columns: [
                                        GridItem(.fixed(geometry.size.width / 1)),
                                        GridItem(.fixed(geometry.size.width / 1)),
                                        GridItem(.fixed(geometry.size.width / 1))
                                    ]) {
                                        HStack{
                                            Text("いいね！：")
                                                .font(.system(size: 15))
                                                .padding(.leading, 10)
                                            Text(person.like)
                                            Spacer()
                                        }
                                    }
                                }
                            }
                            .padding(.bottom, 10.0)
                        }
                    }
                    .navigationBarHidden(true)
                }
                .tabItem {
                    Image(systemName: "house.fill")
                }
                NavigationView {
                    VStack {
                        
                    }
                }
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
                NavigationView {
                    VStack {
                        
                    }
                }
                .tabItem {
                    Image(systemName: "camera")
                }
                NavigationView {
                    VStack {
                        
                    }
                }
                .tabItem {
                    Image(systemName: "heart")
                }
                NavigationView {
                    VStack {
                        
                    }
                }
                .tabItem {
                    Image(systemName: "person")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
