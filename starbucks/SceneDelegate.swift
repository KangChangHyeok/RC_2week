//
//  SceneDelegate.swift
//  starbucks
//
//  Created by 강창혁 on 2022/05/21.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    var imageView: UIImageView?
    var background: UIView?
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        guard let _ = (scene as? UIWindowScene) else { return }
    }
    
    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }
    //scene이 다시 활성화 될 때
    func sceneDidBecomeActive(_ scene: UIScene) {
        if let imageView = imageView {
            imageView.removeFromSuperview()
            background?.removeFromSuperview()
        }
        
    }
    //scene이 Foreground Inactive 상태
    func sceneWillResignActive(_ scene: UIScene) {
        guard let window = window else {
            return
        }
        //배경 뷰와 가운데 로고 뷰 2개 설정
        background = UIView(frame: window.frame)
        background?.backgroundColor = UIColor(red: 0.01, green: 0.40, blue: 0.21, alpha: 1.00)
        imageView = UIImageView()
        imageView?.image = UIImage(named: "Switcherimage")
        imageView?.layer.cornerRadius = 50
        imageView?.clipsToBounds = true
        window.addSubview(background!)
        window.addSubview(imageView!)
        
        //코드로 오토레이아웃 설정, 로고를 뷰의 가운데에 오게 하기 위해 배경 뷰의 수직과 수평 똑같이 맞춰줌. 크기는 100 x 100
        background?.translatesAutoresizingMaskIntoConstraints = false
        imageView?.translatesAutoresizingMaskIntoConstraints = false
        imageView?.centerXAnchor.constraint(equalTo: window.centerXAnchor).isActive = true
        imageView?.centerYAnchor.constraint(equalTo: window.centerYAnchor).isActive = true
        imageView?.widthAnchor.constraint(equalToConstant: 100).isActive = true
        imageView?.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        
        
        

    }
    
    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }
    //scene이 Background 상태 진입
    func sceneDidEnterBackground(_ scene: UIScene) {
        
        let content = UNMutableNotificationContent()
        
        content.title = "스타벅스를 이용해주셔서 감사합니다."
        content.subtitle = "다음에도 또 이용해 주세요!"
        content.badge = 1
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 1, repeats: false)
        
        let request = UNNotificationRequest(identifier: "out", content: content, trigger: trigger)
        
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
    }
    
    
}

