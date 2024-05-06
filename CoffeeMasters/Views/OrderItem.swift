//
//  OrderItem.swift
//  CoffeeMasters
//
//  Created by Giovanni Maya on 5/5/24.
//

import SwiftUI

struct OrderItem: View {
    var item: (Product, Int)
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        HStack{
            Text("\(item.1)x")
            Text(item.0.name)
            Spacer()
            Text("$ \(Double(item.1) * item.0.price, specifier: "%.2f")")
            Image(systemName: "trash")
                .padding()
                .foregroundColor(.blue)
                .onTapGesture {
                    cartManager.remove(product: item.0, quantity: item.1)
                }
        }
    }
}

#Preview {
    OrderItem(item: (Product(id: 1, name: "Dummy Product", description: "This is a dummy product", price: 4.25, image: ""), 1))
        .environmentObject(CartManager())
}
