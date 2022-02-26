//
//  ViewController.swift
//  03ViewStruct

//화면을 이동하는 방법 2가지
//1. 네비게이션 컨트롤러 이용(Navigation Controller) - 권장 - 수평이동
//코드로 이동(push, pop), segue로 이동 2가지 방법
//수평적 이동: 카카오 택시 앱: 예약 - 콜 - 옵션1 - 옵션2 - ...

//2. 팝업창으로 이동하는 방법: 간단한 이벤트 화면, 로그인, 회원가입 - 수직이동
//코드로 이동(present, dismiss), segue로 이동 2가지 방법
//수직적 이동: 간단히 떴다가 사라지는 화면

//네이게이션 컨트롤러 뷰 관리 방법
//1. 다음 화면으로 이동하기
//self.navigationController?.pushViewController
//2. 이전화면으로 이동하기
//popViewController
//3. 맨 앞으로 이동하기 root view로
//popToViewController(newVC, animated: true)
//5. 특정 뷰를 삭제할 때
//navigationController?.viewControllers 배열에서 삭제 remove(at:)
//6. 특정 뷰를 중간에 추가할 때
//navigationController?.viewControllers 배열에서 추가. insert(at:)

//뷰 컨트롤러의 수명주기(life cycle)
//viewDidLoad: 뷰가 생성될 때 한번만 호출 됨(초기화 용도)
//viewWillAppear: 뷰가 화면에 보일 때마다 호출 됨. (화면 갱신 용도)
//viewDidAppear: 뷰가 화면에 보이고 나서 매번 호출 됨
//viewWillDisappear: 뷰가 화면에 사라지기 전마다 호출 됨(데이터 전달)
//viewDidDisappear: 뷰가 화면에 사라지고 나서 매번 호출 됨
//viewWillLayoutSubviews: 컨트롤(서브뷰)들의 레이아웃을 잡기 전에 호출 됨
//viewDidLayoutSubviews: 컨트롤들의 레이아웃을 잡고 나서 호출 됨

//뷰 컨트롤러 간의 데이타 전달(참조)하는 법
//1. 전역변수를 이용한다. (앱 내 모든 VC에서 접근 가능)
//2. A class(VC)에서 B class로 데이터 전달
//3. B class에서 A class로 데이터 전달

import UIKit

class ViewController: UIViewController {
    
    //전역변수 참조법
    let appDelegate = UIApplication.shared.delegate as! AppDelegate//확정형 형변환
    var mainData: String = ""

    //outlet 들어가는 곳
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
        
        appDelegate.mainVC = self
        
        //전역변수를 참조하는 곳
        appDelegate.globalData = "전역변수 설정함"
    }

    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear")//매번 호출
        print(self.mainData)
    }
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear")
    }
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear")
    }
    override func viewWillLayoutSubviews() {
        print("viewWillLayoutSubviews")
    }
    override func viewDidLayoutSubviews() {
        print("viewDidLayoutSubviews")
    }
    //action 함수 들어가는 곳
    
    //네이게이션 컨트롤러에서 seque로 이동하기(코드를 추가하고 싶을 경우)
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC"{
            let vc = segue.destination as! SecondViewController//인터페이스에서 아이덴티파이어 설정 필요
            vc.secondData = "sent by main screen(by segue)"
        }
    }
    
    //네비게이션 컨트롤러에서 코드로 이동하기
    @IBAction func onBtnNext(_ sender: UIButton) {
        let newVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondVC") as! SecondViewController
        newVC.secondData = "sent by main screen"
        //후에 아이덴티파이어 설정 해줘야 함
        self.navigationController?.pushViewController(newVC, animated: true)
        //?활용 널로 인한 오류 방지
    }
    @IBAction func onBtnPopup(_ sender: UIButton) {
        let newVC = self.storyboard?.instantiateViewController(withIdentifier: "PopupVC") as! PopupViewController
       
        self.present(newVC, animated: true, completion: nil)
    }
    
}

