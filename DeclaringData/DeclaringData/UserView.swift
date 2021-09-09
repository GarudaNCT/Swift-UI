//
//  UserView.swift
//  DeclaringData
//
//  Created by NL on 05/09/2021.
//

import SwiftUI

struct UserView: View {
    @ObservedObject var user: User
    var body: some View {
        VStack {
            Image(systemName: "person.crop.square")
                .resizable()
                .foregroundColor(.blue)
            Text(user.name)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
            Text("\(user.age)")
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
            Button(action: {
                user.age += 1
            }) {
                Text("Tap me!")
            }
        }
    }
}

