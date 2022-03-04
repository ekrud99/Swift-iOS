//
//  AppDelegate.swift
//  Ex03_LoginJoin
//
//  Created by Dagyeong on 2022/02/26.
//

import UIKit

struct UserInfo {
    var id: String = ""
    var pw: String = ""
    var name: String = ""
    var phone: String = ""
    
}//유저 정보 저장 위한 구조체

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    //전역변수 들어가는 곳
    var isLogin: Bool = false//로그인 상태 체크 위한 전역 변수
    var isAgree: Bool = false//약관 동의 상태 체크 위한 전역 변수
    var userInfo: UserInfo = UserInfo()//유저 정보 저장 구조체 생성
    


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

