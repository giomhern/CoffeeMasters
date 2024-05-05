//
//  OffersPage.swift
//  CoffeeMasters
//
//  Created by Giovanni Maya on 5/5/24.
//

import SwiftUI

struct OffersPage: View {
    var body: some View {
        NavigationView{
            List{
                Offer(title: "Early Coffee", description: "10% off. Offer valid from 9am - 12pm.")
                Offer(title: "Welcome Gift!", description: "25% off your first order!")
            }.navigationTitle("Offers")
        }
    }
}

#Preview {
    OffersPage()
}
