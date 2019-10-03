//
//  ViewController.swift
//  progressbar
//
//  Created by KartRocket iOSOne on 24/07/19.
//  Copyright © 2019 CodesRoom. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let MAXTIME = 10.0
    var currentTime = 0.0

    @IBOutlet weak var ProgressBar: UIProgressView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func PerformAction(_ sender: Any) {
        ProgressBar.setProgress(Float(currentTime), animated: true)
        perform(#selector(updateProgress), with: nil , afterDelay: 1.0)
    }
    
    @objc func updateProgress(){
        currentTime = currentTime+1.0
        ProgressBar.progress = Float(currentTime/MAXTIME)
        
        if currentTime<MAXTIME{
            perform(#selector(updateProgress), with : nil , afterDelay: 1.0)
    }
    else{
    print("Stop")
            currentTime = 0.0
    }
    }

}
