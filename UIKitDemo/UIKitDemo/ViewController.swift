//
//  ViewController.swift
//  UIKitDemo
//
//  Created by NL on 07/09/2021.
//

import UIKit
import SwiftUI
class ViewController: UIViewController {

    @IBSegueAction func openUserView(_ coder: NSCoder) -> UIViewController? {
        let userView = UserView(name: "thanh") { name in
            print("name selected: \(name)")
        }
        return UIHostingController(coder: coder, rootView: userView)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func goToUserView(_ sender: Any) {
        let userView = UserView(name: "thanh") { name in
            print("name selected: \(name)")
            
        }
        let hostingCtrl = UIHostingController(rootView: userView)
        self.navigationController?.pushViewController(hostingCtrl, animated: true)
    }
    
}

