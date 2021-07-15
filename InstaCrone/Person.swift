//
//  Person.swift
//  InstaCrone
//
//  Created by Yuu Shimizu on 2021/07/15.
//

import Foundation

struct Person: Identifiable {
    var id: UUID = UUID()
    var name: String
    var image: String
    var location: String
    var like: String
}
