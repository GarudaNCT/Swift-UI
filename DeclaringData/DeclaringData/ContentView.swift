//
//  ContentView.swift
//  DeclaringData
//
//  Created by NL on 05/09/2021.
//

import SwiftUI

class User: ObservableObject {
    @Published var name: String
    @Published var age: Int
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
}
struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello world")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
