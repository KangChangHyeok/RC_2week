//
//  ViewController.swift
//  starbucks
//
//  Created by 강창혁 on 2022/05/21.
//

import UIKit
class ViewController: UIViewController {

    @IBOutlet weak var joinButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonSet()
    }


    func buttonSet() {
        loginButton.layer.borderColor = .init(red: 0, green: 112/255, blue: 74/255, alpha: 1)
        loginButton.layer.borderWidth = 1
        loginButton.layer.cornerRadius = loginButton.bounds.height / 2
        
        joinButton.layer.backgroundColor = .init(red: 0, green: 112/255, blue: 74/255, alpha: 1)
        joinButton.layer.cornerRadius = joinButton.bounds.height / 2
    }
    
}

