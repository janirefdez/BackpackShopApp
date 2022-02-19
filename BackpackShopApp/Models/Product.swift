//
//  Product.swift
//  BackpackShopApp
//
//  Created by Janire Fernandez on 19/2/22.
//

import Foundation

struct Product: Identifiable{
    var id = UUID()
    var name: String
    var image: String
    var price: Int
}

var productList = [Product(name: "Orange backpack", image: "backpack1", price: 23),
                   Product(name: "Dark grey backpack", image: "backpack2", price: 15),
                   Product(name: "Brown backpack", image: "backpack3", price: 28),
                   Product(name: "Pink backpack", image: "backpack4", price: 29),
                   Product(name: "Blue backpack", image: "backpack5", price: 26),
                   Product(name: "Light Brown backpack", image: "backpack6", price: 32),
                   Product(name: "Light grey backpack", image: "backpack7", price: 27),
                   Product(name: "Black backpack", image: "backpack8", price: 25)]
