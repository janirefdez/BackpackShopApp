//
//  ContentView.swift
//  BackpackShopApp
//
//  Created by Janire Fernandez on 19/2/22.
//

import SwiftUI

struct ContentView: View {
    
    var columns = [GridItem(.adaptive(minimum: 120), spacing: 70)]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(productList, id: \.id) { product in
                    ProductCard(product: product)
                }
            }.padding(40)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewDevice(PreviewDevice(rawValue: "iPad Pro (9.7-inch)"))
                .previewDisplayName("iPad Pro (9.7-inch)")
            
            ContentView()
                .previewInterfaceOrientation(.portraitUpsideDown)
            
            
        }
    }
}
