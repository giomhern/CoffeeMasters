//
//  CartManager.swift
//  CoffeeMasters
//
//  Created by Giovanni Maya on 5/5/24.
//

import Foundation
class CartManager: ObservableObject {
    @Published var cart: [(Product, Int)] = []
    
    func add(product: Product, quantity: Int){
        self.cart.append((product, quantity))
    }
    
    func remove(product: Product, quantity: Int){
        self.cart.removeAll{ itemInCart in
            return itemInCart.0.id == product.id
        }
    }
}
