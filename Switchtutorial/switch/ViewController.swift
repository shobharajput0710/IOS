//
//  ViewController.swift
//  switch
//
//  Created by KartRocket iOSOne on 23/07/19.
//  Copyright © 2019 CodesRoom. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var output: UILabel!
    
    @IBAction func `switch`(_ sender: UISwitch) {
        
        if (sender.isOn == true)
        {
            output.text = "hello, i am fine"
        }
        else
        {
            output.text = "heya!,not good"
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

