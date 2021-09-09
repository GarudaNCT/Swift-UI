//
//  LoginViewController.swift
//  UIKitDemo
//
//  Created by NL on 07/09/2021.
//

import UIKit
import SwiftUI
class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func login(_ sender: Any) {
        let userView = UserView(name: "thanh") { name in
            print("swiftUI->UIKit: \(name)")
        }
        let vc = UIHostingController(rootView: userView)
        vc.navigationItem.title = "Profile"
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
