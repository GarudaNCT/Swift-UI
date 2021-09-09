//
//  GameSetting.swift
//  DeclaringData
//
//  Created by NL on 05/09/2021.
//

import SwiftUI

class GameSetting: ObservableObject {
    @Published var score = 0
}

struct ScoreView: View {
    @EnvironmentObject var settings: GameSetting
    
    var body: some View {
//        Text("Score: \(settings.score)")
        
        Text("Score: \(settings.score)")
    }
}

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView()
    }
}

