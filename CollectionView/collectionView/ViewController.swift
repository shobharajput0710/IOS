//
//  ViewController.swift
//  collectionView
//
//  Created by KartRocket iOSOne on 16/09/19.
//  Copyright © 2019 CodesRoom. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UICollectionViewDelegate,UICollectionViewDataSource{
  
    
   
    
    var imageArray = [UIImage(named: "1"),
                      UIImage(named: "2"),
                      UIImage(named: "3"),
                      UIImage(named: "4"),
                      UIImage(named: "4"),
                      UIImage(named: "6"),
                      UIImage(named: "7"),
                      UIImage(named: "8"),
                      UIImage(named: "9"),]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageArray.count
     }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ImageCollectionViewCell", for: indexPath) as! ImageCollectionViewCell
        
        cell.imgImage.image = imageArray[indexPath.row]
        return cell
    }
}

