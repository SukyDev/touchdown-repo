//
//  FooterView.swift
//  Touchdown
//
//  Created by Vladimir Sukanica on 10.2.21..
//

import SwiftUI

struct FooterView: View {
	//MARK: - PROPERTIES

	//MARK: - BODY
    var body: some View {
        VStack(alignment: .center, spacing: 10, content: {
            Text("We offer the most cutting edge, comfortable, lightweight and durable fooball helmets in the market at affordable prices.")
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(2)
                
                Image("logo-lineal")
                    .renderingMode(.template)
                    .foregroundColor(.gray)
                    .layoutPriority(0)
            
            Text("Copyright © Vladimir Sukanica \n All rights reserved")
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(1)

                
        })//:VSTACK
    }
}

	//MARK: - PREVIEW

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
            .padding()
    }
}
