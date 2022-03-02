//
//  ViewController.swift
//  Ex05Tabbar
//
//  Created by Dagyeong on 2022/02/26.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    //탭바 인덱스가 didload에선 안되고 didappear에선 되는 이유
    //탭바 컨트롤러는 뷰3개를 가지고 있음. 정렬되는 딜레이가 있는데 didload는 그보다 빠르므로 에러 didappear는 생명주기가 뒤에 있어서 가능
    override func viewDidAppear(_ animated: Bool) {
        if let index = self.tabBarController?.selectedIndex{
        print("tabIndex", index)
        }else{
            print("nil")
        }
        
    }

    @IBAction func onBtnNext(_ sender: UIButton) {
        self.tabBarController?.selectedIndex = 1//0 - first, 1 - second, 2 - third ...
    }
    
}

