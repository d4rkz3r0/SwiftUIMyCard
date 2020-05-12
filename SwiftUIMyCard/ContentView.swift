//
//  ContentView.swift
//  SwiftUIMyCard
//
//  Created by Steve Kerney on 5/12/20.
//  Copyright © 2020 Steve Kerney. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.6, green: 0.8, blue: 0.5)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image(Constants.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 175.0, height: 175.0)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                Text(Constants.userName)
                    .font(Font.custom(Constants.fontName, size: CGFloat(40.0)))
                    .bold()
                    .foregroundColor(.white)
                Text(Constants.userTitle)
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                VStack() {
                    InfoView(text: Constants.userPhoneNumber, imageName: Constants.phoneIconImageName, imageTint: .green)
                    InfoView(text: Constants.userEmailAddress, imageName: Constants.emailIconImageName, imageTint: .gray)
                    InfoView(text: Constants.userGithubAddress, imageName: Constants.githubIconImageName, imageTint: .black)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


