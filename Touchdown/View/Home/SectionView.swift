//
//  SectionView.swift
//  Touchdown
//
//  Created by Vladimir Sukanica on 10.2.21..
//

import SwiftUI

struct SectionView: View {
	//MARK: - PROPERTIES
    
    @State var rotateClockwise: Bool

	//MARK: - BODY
    var body: some View {
        VStack {
            Spacer()
            
            Text("Categories".uppercased())
                .font(.footnote)
                .foregroundColor(.white)
                .fontWeight(.bold)
                .rotationEffect(Angle(degrees: rotateClockwise ? 90 : -90))
            
            Spacer()
        }//: VSTACK
        .background(colorGray.cornerRadius(12))
        .frame(width: 85)
    }
}

	//MARK: - PREVIEW

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(rotateClockwise: false)
            .previewLayout(.fixed(width: 120, height: 240))
            .padding()
            .background(colorBackground)
    }
}
