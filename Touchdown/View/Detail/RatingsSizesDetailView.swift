//
//  RatingsSizesDetailView.swift
//  Touchdown
//
//  Created by Vladimir Sukanica on 10.2.21..
//

import SwiftUI

struct RatingsSizesDetailView: View {
	//MARK: - PROPERTIES

    let sizes: [String] = ["XS", "S", "M", "L", "XL"]
	//MARK: - BODY
    var body: some View {
        HStack(alignment: .top, spacing: 3, content: {
            // RATINGS
            VStack(alignment: .leading, spacing: 3, content: {
                Text("Ratings")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                
                HStack(alignment: .center, spacing: 3, content: {
                    ForEach(0 ..< 5) { item in
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Image(systemName: "star.fill")
                                .frame(width: 28, height: 28, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .background(colorGray.cornerRadius(5))
                                .foregroundColor(.white)
                        })
                    }//: LOOP
                })
            })
            Spacer()
            
            // SIZES
            VStack(alignment: .trailing, spacing: 3, content: {
                Text("Sizes")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                
                HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 5, content: {
                    ForEach(sizes, id: \.self){ size in
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Text(size)
                                .font(.footnote)
                                .fontWeight(.heavy)
                                .foregroundColor(colorGray)
                                .frame(width: 28, height: 28, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .background(
                                    RoundedRectangle(cornerRadius: 5).stroke(colorGray, lineWidth: 2))
                        })
                    }
                })
            })
        })
    }
}

	//MARK: - PREVIEW

struct RatingsSizesDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RatingsSizesDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
