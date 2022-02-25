//
//  ThirdViewController.swift
//  03ViewStruct


import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onBtnBack(_ sender: UIButton) {
        //self.navigationController?.popViewController(animated: true)//바로 전 화면으로 이동
        self.navigationController?.popToRootViewController(animated: true)//첫번째 화면으로 바로 이동
    }
    

}
