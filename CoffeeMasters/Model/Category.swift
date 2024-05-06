//
//  Category.swift
//  CoffeeMasters
//
//  Created by Giovanni Maya on 5/5/24.
//

import Foundation
struct Category: Decodable, Identifiable {

    var name: String
    var products: [Product]
    
    var id: String {
        return self.name
    }
}
