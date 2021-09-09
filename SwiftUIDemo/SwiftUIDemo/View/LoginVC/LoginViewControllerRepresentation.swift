//
//  LoginViewControllerRepresentation.swift
//  SwiftUIDemo
//
//  Created by NL on 07/09/2021.
//

import UIKit
import SwiftUI
struct LoginViewControllerRepresentation: UIViewControllerRepresentable {
    typealias UIViewControllerType = LoginViewController
    func makeUIViewController(context: Context) -> LoginViewController {
        let vc = LoginViewController()
        return vc
    }
    
    func updateUIViewController(_ uiViewController: LoginViewController, context: Context) {
        print("update")
    }
}

struct LoginViewControllerPreview: PreviewProvider {
    static var previews: some View {
        LoginViewControllerRepresentation()
    }
    
    
}
