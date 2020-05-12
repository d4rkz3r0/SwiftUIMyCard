//
//  InfoView.swift
//  SwiftUIMyCard
//
//  Created by Steve Kerney on 5/12/20.
//  Copyright © 2020 Steve Kerney. All rights reserved.
//

import SwiftUI

struct InfoView: View {
    let text: String
    let imageName: String
    let imageTint: Color

    var body: some View {
        RoundedRectangle(cornerRadius: CGFloat(integerLiteral: 25))
            .fill(Color.white)
            .frame(height: 50)
            .overlay(HStack {
                Image(systemName: imageName)
                    .foregroundColor(imageTint)
                Text(text)
                    .foregroundColor(.black)
            })
            .padding([.leading, .trailing], 10)
            .padding([.top, .bottom], 7.5)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Placeholder Text", imageName: Constants.phoneIconImageName, imageTint: .green)
            .previewLayout(.sizeThatFits)
    }
}
