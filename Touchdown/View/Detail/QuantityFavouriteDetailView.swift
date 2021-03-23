//
//  QuantityFavouriteDetailView.swift
//  Touchdown
//
//  Created by Vladimir Sukanica on 10.2.21..
//

import SwiftUI

struct QuantityFavouriteDetailView: View {
	//MARK: - PROPERTIES
    
    @State private var counter: Int = 0

	//MARK: - BODY
    var body: some View {
        HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 6, content: {
            Button(action: {
                feedback.prepare()
                feedback.impactOccurred()
                if counter > 0 {
                    counter -= 1
                }
            }, label: {
                Image(systemName: "minus.circle")
            })
            
            Text("\(counter)")
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            
            Button(action: {
                feedback.impactOccurred()
                if counter < 100 {
                    counter += 1
                }
            }, label: {
                Image(systemName: "plus.circle")
            })
            
            Spacer()
            
            Button(action: {
                feedback.impactOccurred()
            }, label: {
                Image(systemName: "heart.circle")
                    .foregroundColor(.pink)
            })
        })//: HSTACK
        
        .font(.system(.title, design: .rounded))
        .foregroundColor(.black)
        .imageScale(.large)
    }
}

	//MARK: - PREVIEW

struct QuantityFavouriteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        QuantityFavouriteDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
