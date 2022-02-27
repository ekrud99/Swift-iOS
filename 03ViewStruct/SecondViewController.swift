//
//  SecondViewController.swift
//  03ViewStruct


import UIKit

class SecondViewController: UIViewController {
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    var secondData: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //전역변수를 참조하여 출력
        print(appDelegate.globalData)
        //첫 번째 화면에서 전달받은 데이터 출력
        print(self.secondData)
    }
    
    @IBAction func onBtnNext(_ sender: UIButton) {
        let newVC = self.storyboard?.instantiateViewController(withIdentifier: "ThirdVC") as! ThirdViewController
        //후에 아이덴티파이어 설정 해줘야 함
        self.navigationController?.pushViewController(newVC, animated: true)
        //?활용 널로 인한 오류 방지
    }
    @IBAction func onBtnBack(_ sender: UIButton) {
        appDelegate.mainVC?.mainData = "sent by second screen"
        
        self.navigationController?.popViewController(animated: true)
    }
    
   

}
