//
//  CoffeeMastersApp.swift
//  CoffeeMasters
//
//  Created by Giovanni Maya on 5/3/24.
//

import SwiftUI

@main
struct CoffeeMastersApp: App {
    var menuManager = MenuManager()
    var cartManager = CartManager()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(menuManager)
                .environmentObject(cartManager)
        }
    }
}
