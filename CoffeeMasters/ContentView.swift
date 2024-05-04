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
        VStack{
            TextField("Enter your name", text: $name)
            Text("Hello \(name)" )
        }
    }
}

#Preview {
    ContentView()
}
