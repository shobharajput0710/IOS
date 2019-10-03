//
//  ViewController.swift
//  testapp
//
//  Created by KartRocket iOSOne on 23/07/19.
//  Copyright © 2019 CodesRoom. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var vwView: UIView!
    
    @IBOutlet weak var scSegment: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    @IBAction func scSegmentTapped(_ sender: Any) {
        let getIndex = scSegment.selectedSegmentIndex
        print(getIndex)
        
        switch (getIndex) {
        case 0:
            self.vwView.backgroundColor = UIColor.red
        case 1:
            self.vwView.backgroundColor = UIColor.green
        case 2:
            self.vwView.backgroundColor = UIColor.blue
        case 3:
            self.vwView.backgroundColor = UIColor.black
        default:
            print("no select")
        }
        
    }
    

}

