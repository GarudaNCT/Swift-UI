//
//  UserView.swift
//  TheNewApp
//
//  Created by NL on 04/09/2021.
//

import SwiftUI

struct UserView: View {
    var name: String
    @Binding var count: Int
    @State var isSelected = false
    var action: (() -> Void)?
    var body: some View {
        VStack {
            Image(systemName: "person.crop.square")
                .resizable()
                .foregroundColor(.blue)
                .frame(width: 100, height: 100)
            Text(name)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .frame(width: 100, height: 25)
            Button(action: {
                isSelected.toggle()
                if isSelected {
                    count += 1
                } else {
                    count -= 1
                }
                action!()
            }) {
                Image(systemName: isSelected ? "checkmark.square" : "square")
                    .foregroundColor(.green)
            }
            .frame(width: 100, height: 25)
        }
        .frame(width: 100, height: 170)
        
    }
    func onChange(action: @escaping () -> Void) -> Self {
        var copy = self
        copy.action = action
        return copy
    }
}
