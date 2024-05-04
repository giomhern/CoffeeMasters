//
//  Offer.swift
//  CoffeeMasters
//
//  Created by Giovanni Maya on 5/4/24.
//

import SwiftUI

struct Offer: View {
    var title = ""
    var description = ""
    var body: some View {
        VStack {
            Text(title)
                .padding()
                .font(.title)
                .fontWeight(.semibold)
            Text(description)
                .padding()
        }
    }
}

#Preview {
    Offer(title: "My Offer", description: "This is a description")
        .previewInterfaceOrientation(.portraitUpsideDown)
}
