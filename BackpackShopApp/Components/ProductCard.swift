//
//  ProductCard.swift
//  BackpackShopApp
//
//  Created by Janire Fernandez on 19/2/22.
//

import SwiftUI

struct ProductCard: View {
    var product: Product
    
    var body: some View {
        ZStack(alignment: .topTrailing){
            ZStack(alignment: .bottom){
                Image(product.image)
                    .resizable()
                    .cornerRadius(20)
                    .frame(width: 180)
                    .scaledToFit()
                
                VStack(alignment: .leading){
                    Text(product.name)
                        .bold()
                    
                    Text("\(product.price)€")
                        .font(.caption)
                }
                .padding()
                .frame(width: 180, alignment: .leading)
                .background(.ultraThinMaterial)
                .cornerRadius(20)
            }
            .frame(width: 180, height: 250)
            .shadow(radius: 3)
        }
    }
}

struct ProductCard_Previews: PreviewProvider {
    static var previews: some View {
        ProductCard(product: productList[0])
    }
}
