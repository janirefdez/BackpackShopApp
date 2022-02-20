//
//  ProductRow.swift
//  BackpackShopApp
//
//  Created by Janire Fernandez on 19/2/22.
//

import SwiftUI

struct ProductRow: View {
    @EnvironmentObject var cartManager: CartManager
    var product: Product
    var amount: Int
    
    var body: some View {
        HStack(spacing: 20){
            Image(product.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 70)
                .cornerRadius(10)
            
            
            VStack(alignment: .leading, spacing: 10){
                Text(product.name)
                    .bold()
                Text("\(product.price)€")
            }
            
            Spacer()
            
            HStack(spacing: 10){
                Image(systemName: "trash")
                    .foregroundColor(.pink)
                    .onTapGesture {
                        cartManager.removeFromCart(product: product)
                    }
                    .padding(5)
                Text("\(amount)")
                Image(systemName: "plus")
                    .onTapGesture {
                        cartManager.addToCart(product: product)
                    }
                    .padding(5)
            }
            .background(.ultraThinMaterial)
            .cornerRadius(10)
            
            
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
    }
}

struct ProductRow_Previews: PreviewProvider {
    static var previews: some View {
        ProductRow(product: productList[3], amount: 2)
            .environmentObject(CartManager())
    }
}
