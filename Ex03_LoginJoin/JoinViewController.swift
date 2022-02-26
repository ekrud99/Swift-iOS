//
//  JoinViewController.swift
//  Ex03_LoginJoin
//
//  Created by Dagyeong on 2022/02/26.
//

import UIKit

class JoinViewController: UIViewController {

    let appDelegate = UIApplication.shared.delegate as! AppDelegate//공식처럼 사용
    @IBOutlet weak var tfID: UITextField!
    @IBOutlet weak var tfPW: UITextField!
    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var tfPhone: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func onBtnJoin(_ sender: UIButton) {
        
        //약관 동의 여부 확인
        if appDelegate.isAgree == false{
            print("please agree")
            return
        }
        
        let id = tfID.text
        let pw = tfPW.text
        let name = tfName.text
        let phone = tfPhone.text
        
        //예외처리
        if let safeID = id, let safePW = pw, let safeName = name, let safePhone = phone{
            if safeID.count < 3{
                print("enter id")
                return
            }
            if safePW.count < 4{
                print("enter pw")
                return
            }
            if safeName.count < 2{
                print("enter name")
            }
            if safePhone.count < 8{
                print("enter phone number")
                return
            }
            
            //서버와 통신
            appDelegate.userInfo.id = safeID
            appDelegate.userInfo.pw = safePW
            appDelegate.userInfo.name = safeName
            appDelegate.userInfo.phone = safePhone
            print("sign in success")
            
        }else{
            print("nil")
        }
    }
    
    
}
