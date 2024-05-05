//
//  MenuPage.swift
//  CoffeeMasters
//
//  Created by Giovanni Maya on 5/5/24.
//

import SwiftUI

struct MenuPage: View {
    var body: some View {
        NavigationView{
            List {
                ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                    Product()
                }
            }.navigationTitle("Products")
        }
    }
}

#Preview {
    MenuPage()
}
