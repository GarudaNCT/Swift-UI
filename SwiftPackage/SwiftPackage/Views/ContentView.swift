//
//  ContentView.swift
//  SwiftPackage
//
//  Created by NL on 09/09/2021.
//

import SwiftUI
import Game
struct ContentView: View {
    var body: some View {
        GameView(width: 300)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
