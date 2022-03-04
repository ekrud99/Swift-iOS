//
//  SecondViewController.swift
//  MyEx01
//
//  Created by Dagyeong on 2022/03/01.
//

import UIKit

class SecondViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return names.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = self.collectionView.dequeueReusableCell(withReuseIdentifier: "MyCollectionViewCell", for: indexPath) as! MyCollectionViewCell
        cell.movieImageView?.image = UIImage(named: images[indexPath.row])
        cell.labelName?.text = names[indexPath.row]
        dump(images[indexPath.row])
        
        return cell;
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("아이템 선택됨 : ", indexPath.row)
    }

    @IBOutlet weak var collectionView: UICollectionView!

    let names:[String] = [
        "13시간", "12솔저스", "헌터킬러", "잭리처"
    ]

    let images:[String] = [
        "13hours", "12sol", "hunter", "jack"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(MyCollectionViewCell.self, forCellWithReuseIdentifier: "MyCollectionViewCell")
        
        

    }



}



