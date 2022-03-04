//
//  PopupViewController.swift
//  03ViewStruct


import UIKit

class PopupViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onBtnClose(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
}
