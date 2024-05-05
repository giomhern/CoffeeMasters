//
//  ContentView.swift
//  CoffeeMasters
//
//  Created by Giovanni Maya on 5/3/24.
//

import SwiftUI

struct ContentView: View {
    @State var name = ""
    var body: some View {
        TabView {
            MenuPage()
                .tabItem {
                    Image(systemName: "cup.and.saucer")
                    Text("Menu")
                }
            OffersPage()
                .tabItem {
                    Image(systemName: "tag")
                    Text("Offers")
                }
            OrderPage()
                .tabItem {
                    Image(systemName: "cart")
                    Text("Orders")
                }
            InfoPage()
                .tabItem {
                    Image(systemName: "info")
                    Text("Info")
                }
        }
    }
}

#Preview {
    ContentView()
}
