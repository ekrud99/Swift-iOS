//
//  MyTabBarController.swift
//  Ex05Tabbar
//
//  Created by Dagyeong on 2022/02/26.
//

import UIKit


class MyTabBarController: UITabBarController, UITabBarControllerDelegate {//touch 받기 위해 delegate 추가
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate

    override func viewDidLoad() {
        super.viewDidLoad()
        
        appDelegate.myTabBar = self
        self.delegate = self
        
    }
    
    //탭바 선택시 이벤트 함수 호출
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        print("selected tabbar index: ", tabBarController.selectedIndex)
        
        if tabBarController.selectedIndex == 0 || tabBarController.selectedIndex == 1{
            appDelegate.fourthVC?.navigationController?.popViewController(animated: true)
            //4번째 화면에서 1, 2번째 화면 이동 후 다시 3번째로 가면  4번째 화면이 아니라 다시 3번째로 초기화 되게 만듬
        }
    }
    

    
}
