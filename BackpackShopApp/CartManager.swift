//
//  CartManager.swift
//  BackpackShopApp
//
//  Created by Janire Fernandez on 19/2/22.
//

import Foundation

class CartManager: ObservableObject {
    @Published private(set) var productCartList: [ProductCart] = []
    @Published private(set) var total: Int = 0
    @Published private(set) var count: Int = 0
    
    func addToCart(product: Product){
        
        if let index = productCartList.firstIndex(where: {$0.product.id == product.id}) {
            productCartList[index].amount += 1
        } else {
            productCartList.append(ProductCart(product: product, amount: 1))
        }
        
        count += 1
        total += product.price
    }
    
    func removeFromCart(product: Product){
        
        if let index = productCartList.firstIndex(where: {$0.product.id == product.id}) {
            if (productCartList[index].amount > 1){
                productCartList[index].amount -= 1
            } else {
                productCartList.remove(at: index)
            }
            
            count -= 1
            total -= product.price
        }
    }
}
