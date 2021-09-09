//
//  DemoReferenceView.swift
//  DeclaringData
//
//  Created by NL on 05/09/2021.
//

import SwiftUI

struct DemoReferenceView: View {
    @StateObject var user: User = User(name: "Thanh", age: 26)
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.title)
                .foregroundColor(Color.blue)
                .padding()
            UserView(user: user)
                .frame(width: 100, height: 175)
                .padding()
            HStack{
                Button(action: {
                    user.age += 1
                }, label: {
                    Text("+")
                        .font(.title)
                        .foregroundColor(Color.red)
                        .padding()
                        .background(Color(.lightGray))
                })
                Button(action: {
                    user.age -= 1
                }, label: {
                    Text("-")
                        .font(.title)
                        .foregroundColor(Color.red)
                        .padding()
                        .background(Color(.lightGray))
                })
            }
            
        }
    }
}

struct DemoReferenceView_Previews: PreviewProvider {
    static var previews: some View {
        DemoReferenceView()
    }
}
