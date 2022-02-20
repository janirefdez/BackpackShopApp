//
//  CartView.swift
//  BackpackShopApp
//
//  Created by Janire Fernandez on 19/2/22.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        ScrollView{
            if cartManager.productCartList.count > 0 {
                ForEach(cartManager.productCartList, id:\.product.id) {
                    productCart in
                    ProductRow(product: productCart.product, amount: productCart.amount)
                }
                
                HStack {
                    Text("Your cart total is")
                    Spacer()
                    Text("\(cartManager.total)€")
                        .bold()
                }
                
            } else {
                Text("Your cart is empty")
            }
        }
        .navigationTitle(Text("My Cart"))
        .padding(.top)
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(CartManager())
    }
}
