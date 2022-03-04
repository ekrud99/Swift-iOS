//
//  AgreeViewController.swift
//  Ex03_LoginJoin
//
//  Created by Dagyeong on 2022/02/26.
//

import UIKit

class AgreeViewController: UIViewController {
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate//공식처럼 사용

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func onSwitchChanged(_ sender: UISwitch) {
        if sender.isOn{
            appDelegate.isAgree = true
        }else{
            appDelegate.isAgree = false
        }
    }
    
    @IBAction func onBtnDone(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    

}
