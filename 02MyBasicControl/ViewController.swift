//
//  ViewController.swift
//  02MyBasicControl
//

//오류나면 연결 해제 후 다시 연결
//연결상태 확인 탭
import UIKit

class ViewController: UIViewController {

    //아웃렛 변수가 들어가는 곳
    //우클릭 후 끌어옴
  //컴파일지시어 메모리 정책          !강제 언래핑
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet var buttons: [UIButton]!
    @IBOutlet weak var tfInput: UITextField!
    @IBOutlet weak var imageView: UIImageView!
    
    //화면 로딩 완료 시 자동으로 호출되는 함수
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        labelTitle.backgroundColor = UIColor.cyan//배경 색 변경
        labelTitle.text = "this is title"//label 글자 변경
        labelTitle.textColor = UIColor.orange// label 색갈 변경
        
        btn1.backgroundColor = UIColor.red
        
        for btn in buttons{
            btn.backgroundColor = UIColor(red: 1, green: 0, blue: 0, alpha: 1)
            //alpha: 0.0~1.0
            //rgb: 0.0~1.0
            btn.backgroundColor = UIColor(red: 255/255, green: 100/255, blue: 100/255, alpha: 1)
        }
    }
    //액션함수가 들어가는 곳
    @IBAction func onBtn1Click(_ sender: UIButton) {
        //로그를 남기는 법
        print("btn1 clicked")
        labelTitle.text = "btn1 clicked"
        imageView.image = UIImage(named: "image1")
    }
    @IBAction func onBtnInput(_ sender: UIButton) {
        let titleText = tfInput.text
        labelTitle.text = titleText
        //text input traits에서 키보드 타입 변경 가능
    }
    @IBAction func onBtn2Clicked(_ sender: UIButton) {
        imageView.image = UIImage(named: "image2")
        
    }
    
}
//imageview에서 설정 - view - content mode 에서 조작 가능
//화면캡쳐 단축키 cmd + shift + 4
