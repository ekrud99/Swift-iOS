//
//  SecondViewController.swift


import UIKit

//딜리게이트 delegate -> 프로토콜 protocol(자바 인터페이스)
//이벤트 전달자: 이벤트 콜백 함수
//delegate(대리자): 프로토콜(이벤트 함수 구현시 주로 사용함)
class SecondViewController: UIViewController, UITextFieldDelegate{

    @IBOutlet weak var tfData: UITextField!
    @IBOutlet weak var tvData: UITextView!
    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var indicatorView: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //텍스트 필드의 이벤트 처리자(대리자)는 나다
        //selft는 자신의 클래스를 의미
        //이게 빠지면 이벤트가 생기지 않음
        tfData.delegate = self
    }
    
    //텍스트필드에 글자가 입력될 때마다 호출됨
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        print(textField.text!)
        tvData.text = textField.text!
        return true
        //return false -> 이벤트 무시
    }
    
    //글자 입력이 완료될 때 한번 호출됨(키보드 완료버튼이나 포커스가 바뀔 때)
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        print("textFieldShouldEndEditing")
        return true
    }
    
    //키보드 완료버튼(다음, 서치)을 눌렀을 때
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("textFieldShouldReturn")
        return true
    }
    //액션 함수
    @IBAction func onSwitch(_ sender: UISwitch) {
        tvData.text = "switch: " + String(sender.isOn)
    }
    @IBAction func onSegment(_ sender: UISegmentedControl) {
        tvData.text = "segment: " + String( sender.selectedSegmentIndex )
        switch sender.selectedSegmentIndex {
        case 0:
            progressView.progress = 0.3
            indicatorView.startAnimating()
        case 1:
            progressView.progress = 0.5
            indicatorView.isHidden = !indicatorView.isHidden
        case 2:
            progressView.progress = 0.9
            indicatorView.stopAnimating()
        default:
            progressView.progress = 0
        }
    }
    @IBAction func onSlider(_ sender: UISlider) {
        print("slider changed. ", sender.value)//0.0~1.0
        progressView.progress = sender.value
    }
    @IBAction func onStepper(_ sender: UIStepper) {
        print("stepper changed. ", sender.value)//0, 1, 2
        tvData.text = String(Int(sender.value))
    }
    
    
}//end of class
