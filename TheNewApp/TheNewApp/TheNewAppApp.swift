//
//  TheNewAppApp.swift
//  TheNewApp
//
//  Created by NL on 03/09/2021.
//

import SwiftUI

@main
struct TheNewAppApp: App {
    @Environment(\.scenePhase) private var scenePhase
    @State var name: String = ""
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onOpenURL(perform: { url in
                    print(url.absoluteString)
                })
        }.onChange(of: scenePhase) { phase in
            switch phase {
            case .background:
                print("App state: background")
            case .active:
                print("App state: active")
            case .inactive:
                print("App state: inactive")
            default:
                print("Unknow")
            }
        }
    }
    init() {
        
    }
}

extension URL {
    func valueOf(_ queryParamaterName: String) -> String? {
        guard let url = URLComponents(string: self.absoluteString) else { return nil }
        return url.queryItems?.first(where: { $0.name == queryParamaterName })?.value
    }
}
