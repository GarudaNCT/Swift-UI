//
//  ContentView.swift
//  TheNewApp
//
//  Created by NL on 03/09/2021.
//

import SwiftUI

struct ContentView: View {
    @State var count = 0
    var body: some View {
        VStack {
            Text("Selected \(count) persons")
                .font(.title)
                .foregroundColor(Color.white)
                .background(Color(.red))
                .padding()
            HStack {
                UserView(name: "User 1", count: $count)
                    .onChange {
                        count += 999
                    }
                UserView(name: " User 2", count: $count)
            }
            .padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 8))
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environment(\.colorScheme, .light)
    }
}
