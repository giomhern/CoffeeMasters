//
//  MenuManager.swift
//  CoffeeMasters
//
//  Created by Giovanni Maya on 5/5/24.
//
import Alamofire
import Foundation

class MenuManager: ObservableObject {
    @Published var menu: [Category] = []
    
    init() {
        refreshItemsFromNetwork()
    }
    
    func refreshItemsFromNetwork() {
        AF.request("https://firtman.github.io/coffeemasters/api/menu.json")
            .responseDecodable(of: [Category].self) { response in
                if let menuFromNetwork = response.value {
                    print(menuFromNetwork)
                    self.menu = menuFromNetwork
                }
            }
    }
}
