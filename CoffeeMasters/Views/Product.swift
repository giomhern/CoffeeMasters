//
//  ProductItem.swift
//  CoffeeMasters
//
//  Created by Giovanni Maya on 5/5/24.
//

import SwiftUI

struct Product: View {
    var body: some View {
        VStack{
            Image("DummyImage")
                .frame(width: 300, height: 150)
                .background(Color("AccentColor"))
            HStack {
                VStack(alignment: .leading) {
                    Text("Product Name")
                        .font(.title3)
                        .bold()
                    Text("$ 4.25")
                        .font(.caption)

                }.padding(8)
                Spacer()
            }
        }
        .background(Color("SurfaceBackground"))
        .cornerRadius(10)
        .padding(.trailing)
    }
}

#Preview {
    Product()
}
