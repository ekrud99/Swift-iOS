//
//  FourthViewController.swift
//  Ex05Tabbar
//
//  Created by Dagyeong on 2022/02/26.
//

import UIKit

class FourthViewController: UIViewController {

    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()

        appDelegate.fourthVC = self
    }
    

    

}
