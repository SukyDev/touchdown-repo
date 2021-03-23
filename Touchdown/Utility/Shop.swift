//
//  Shop.swift
//  Touchdown
//
//  Created by Vladimir Sukanica on 10.2.21..
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
