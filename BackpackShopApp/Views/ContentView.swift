//
//  ContentView.swift
//  BackpackShopApp
//
//  Created by Janire Fernandez on 19/2/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var cartManager = CartManager()
    var columns = [GridItem(.adaptive(minimum: 120), spacing: 70)]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(productList, id: \.id) { product in
                        ProductCard(product: product)
                            .environmentObject(cartManager)
                    }
                }
                .padding(40)
            }
            .navigationTitle(Text("Backpack Shop"))
            .toolbar {
                NavigationLink{
                    CartView()
                        .environmentObject(cartManager)
                } label: {
                    CartButton(numberOfProducts:
                                cartManager.count)
                }
                
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            /*ContentView()
                .previewDevice(PreviewDevice(rawValue: "iPad Pro (9.7-inch)"))
                .previewDisplayName("iPad Pro (9.7-inch)")
            */
            ContentView()
                .previewInterfaceOrientation(.portraitUpsideDown)
            
            
        }
    }
}
