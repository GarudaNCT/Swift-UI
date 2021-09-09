//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by NL on 07/09/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink("Login", destination: LoginViewControllerRepresentation().navigationTitle("Login navigation"))
                    .navigationTitle("Swift UI Demo")
                    .navigationBarTitleDisplayMode(.inline)
                    .background(Color(.systemBackground))
                    
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
