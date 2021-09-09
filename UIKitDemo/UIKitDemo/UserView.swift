//
//  UserView.swift
//  DeclaringData
//
//  Created by NL on 05/09/2021.
//

import SwiftUI

struct UserView: View {
    typealias Action = (String) -> Void
    var action: Action?
    var name: String = "noname"
    
    init(name: String, action: @escaping Action) {
        self.name = name
        self.action = action
    }
    var body: some View {
        VStack {
            Image(systemName: "person.crop.square")
                .resizable()
                .foregroundColor(.blue)
            Text(name)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
            Button(action: {
                action!(name)
            }) {
                Text("Tap me!")
            }
        }
    }
}

