//
//  GameView.swift
//  DeclaringData
//
//  Created by NL on 05/09/2021.
//

import SwiftUI

struct GameView: View {
    @StateObject var gameSettings = GameSetting()
    var body: some View {
        NavigationView {
            VStack {
                Text("Score: \(gameSettings.score)")
                    .font(.title)
                Button(action: {
                    gameSettings.score += 1
                }, label: {
                    Text("Increase score")
                        .padding()
                })
                NavigationLink(
                    destination: ScoreView()) {
                        Text("Show detail view")
                    }
            }
            .frame( height: 200)
        }
        .environmentObject(gameSettings)
        
        
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
