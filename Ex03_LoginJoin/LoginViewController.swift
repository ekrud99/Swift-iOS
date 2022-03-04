//
//  LoginViewController.swift
//  Ex03_LoginJoin
//
//  Created by Dagyeong on 2022/02/26.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var tfID: UITextField!
    @IBOutlet weak var tfPW: UITextField!
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    @IBAction func onBtnLogin(_ sender: UIButton) {
        //통신을 통해서 서버에 아이디, 암호를 전달하고 로그인 처리 결과를 알아봄
        
        let id = tfID.text
        let pw = tfPW.text
        
        //예외처리: 아이디와 암호가 제대로 입력 됐는지 확인하는 절차
        if let safeID = id, let safePW = pw{
            //true: safeId, safePW가 모두 nil이 아닌 경우 - 정상적인 경우
            if safeID.count < 3 || safePW.count < 4{
                print("retry")
            }
            //통신하는 곳...
            //로그인 성공시
            appDelegate.userInfo.id = safeID
            appDelegate.userInfo.pw = safeID
            
            appDelegate.isLogin = true//로그인 성공
            
            self.navigationController?.popViewController(animated: true)
        }else{
            //false
            print("id or pw is nil")
        }
    }
    
    
}
