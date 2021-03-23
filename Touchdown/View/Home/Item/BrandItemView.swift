//
//  BrandItemView.swift
//  Touchdown
//
//  Created by Vladimir Sukanica on 10.2.21..
//

import SwiftUI

struct BrandItemView: View {
	//MARK: - PROPERTIES
    let brand: Brand
    
	//MARK: - BODY
    var body: some View {
            Image(brand.image)
                .resizable()
                .scaledToFit()
                .padding(3)
                .background(Color.white.cornerRadius(12))
                .background(RoundedRectangle(cornerRadius: 12).stroke(Color.gray, lineWidth: /*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/))
    }
}

	//MARK: - PREVIEW

struct BrandItemView_Previews: PreviewProvider {
    static var previews: some View {
        BrandItemView(brand: brands[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
