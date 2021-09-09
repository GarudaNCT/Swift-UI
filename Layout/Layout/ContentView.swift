//
//  ContentView.swift
//  Layout
//
//  Created by NL on 04/09/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            ItemView(width: 250, height: 250, name: "1", backgroundColor: .green)
            ItemView(width: 200, height: 200, name: "1", backgroundColor: .red)
            ItemView(width: 100, height: 100, name: "1", backgroundColor: .yellow)
            ItemView(width: 50, height: 50, name: "1", backgroundColor: .blue)
            ItemView(width: 250, height: 250, name: "1", backgroundColor: .green)
            ItemView(width: 250, height: 250, name: "1", backgroundColor: .green)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
