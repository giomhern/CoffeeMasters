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
    
    func total() -> Double {
        var total = 0.0
        for item in cart {
            total += item.0.price * Double(item.1)
        }
        return total
    }
}
