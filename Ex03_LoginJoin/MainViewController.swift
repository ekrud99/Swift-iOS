//
//  MainViewController.swift
//  Ex03_LoginJoin
//
//  Created by Dagyeong on 2022/02/26.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var labelStatus: UILabel!
    let appDelegate = UIApplication.shared.delegate as! AppDelegate//공식처럼 사용
    
    //화면 생성시 한번 호출
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //화면이 보일 때 마다 호출
    override func viewWillAppear(_ animated: Bool) {
        //로그인 상태 갱신
        if(appDelegate.isLogin == true){
            labelStatus.text = "Login Status: true\(appDelegate.userInfo.id)"
        }else{
            labelStatus.text = "Login Status: false\(appDelegate.userInfo.id)"
        }
    }
    @IBAction func onBtnLogout(_ sender: UIButton) {
        appDelegate.isLogin = false
        labelStatus.text = "Login Status: Logout"
    }
    
}

