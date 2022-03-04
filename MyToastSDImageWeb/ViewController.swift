//
//  ViewController.swift
//  MyToastSDImageWeb
//
//  Created by 최다경 on 2022/03/04.
//

import UIKit
import Toast_Swift
import SDWebImage

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.makeToast("토스트 창입니다.", duration: 5.0, position: .bottom)
        let url:URL = URL(string: "https://github.com/scalessec/Toast-Swift/raw/master/toast_swift_screenshot.jpg")!
        self.imageView.sd_setImage(with: url, completed: {
            (image, error, cacheType, imageURL) in
            print(imageURL!)
        })
        
    }
    

}

