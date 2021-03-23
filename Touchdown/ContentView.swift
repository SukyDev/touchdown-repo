//
//  ContentView.swift
//  Touchdown
//
//  Created by Vladimir Sukanica on 9.2.21..
//

import SwiftUI

struct ContentView: View {
// MARK: - PROPERTIES

    @EnvironmentObject var shop: Shop
    
// MARK: - BODY
    var body: some View {
        ZStack {
            if shop.showingProduct == false && shop.selectedProduct == nil {
                VStack(spacing: 0) {
                    NavigationBarView()
                        .padding(.horizontal, 15)
                        .padding(.bottom)
                        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                        .background(Color.white)
                        .shadow(color: Color.black.opacity(0.05), radius: 5, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 5)
                    
                    ScrollView(.vertical, showsIndicators: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, content: {
                        VStack(spacing: 0 ){
                            FeaturedTabView()
                                .padding(.vertical, 20)
                            
                            CategoryGridView()
                            
                            TitleView(title: "Helmet")
                            
                            LazyVGrid(columns: gridLayout, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 15, pinnedViews: /*@START_MENU_TOKEN@*/[]/*@END_MENU_TOKEN@*/, content: {
                                ForEach(products){product in
                                   ProductItemView(product: product)
                                    .onTapGesture {
                                        feedback.impactOccurred()
                                        
                                        withAnimation(.easeOut){
                                            shop.selectedProduct = product
                                            shop.showingProduct = true
                                        }
                                    }
                                }//: LOOP
                            })//: VGRID
                            .padding(15)
                            
                            TitleView(title: "Brands")
                            
                            BrandGridView()
                            
                            FooterView()
                                .padding(.horizontal)
                        }//: VSTACK
                    })//: SCROLL
                }//: VSTACK
                .background(colorBackground.ignoresSafeArea(.all, edges: .all))
            } else {
                ProductDetailView()
            }
        }//: ZSTAck
        .ignoresSafeArea(.all, edges: .top)
    }
}

// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Shop())
    }
}
