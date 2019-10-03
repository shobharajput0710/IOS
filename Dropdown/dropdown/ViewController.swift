//
//  ViewController.swift
//  dropdown
//
//  Created by KartRocket iOSOne on 09/08/19.
//  Copyright © 2019 CodesRoom. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var Cities: [UIButton]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func Btnselectcity(_ sender: Any) {
        Cities.forEach { (Button) in UIView.animate(withDuration: 0.3 ,animations:  {
            Button.isHidden = !Button.isHidden
            self.view.layoutIfNeeded()
            })
    }
    }
    
    @IBAction func Btncity1(_ sender: Any) {
        self.view.backgroundColor = UIColor.blue
    }
    @IBAction func Btncity2(_ sender: Any) {
         self.view.backgroundColor = UIColor.green
    }
    @IBAction func Btncity3(_ sender: Any) {
         self.view.backgroundColor = UIColor.black
    }
    @IBAction func Btncity4(_ sender: Any) {
         self.view.backgroundColor = UIColor.orange
    }
    

}

