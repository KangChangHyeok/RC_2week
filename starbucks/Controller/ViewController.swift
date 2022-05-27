//
//  ViewController.swift
//  starbucks
//
//  Created by 강창혁 on 2022/05/21.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {

    @IBOutlet weak var joinButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    
    let notificationCenter = UNUserNotificationCenter.current()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonSet()
        requestNotification()
    }


    func buttonSet() {
        loginButton.layer.borderColor = .init(red: 0, green: 112/255, blue: 74/255, alpha: 1)
        loginButton.layer.borderWidth = 1
        loginButton.layer.cornerRadius = loginButton.frame.height / 2
        
        joinButton.layer.backgroundColor = .init(red: 0, green: 112/255, blue: 74/255, alpha: 1)
        joinButton.layer.cornerRadius = joinButton.frame.height / 2
    }
    
    //권한 허용 알림
    func requestNotification() {
        let options: UNAuthorizationOptions = [.alert, .sound, .badge]
        
        notificationCenter.requestAuthorization(options: options) { success, error in
            if let error = error {
                print(error)
            }
        }
    }
}

