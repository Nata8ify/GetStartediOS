//
//  ViewController.swift
//  iosgs
//
//  Created by Nattawut Pichaiwattnphon on 10/11/19.
//  Copyright © 2019 Nattawut Pichaiwattnphon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var view_1: UIView!
    @IBOutlet weak var view_conuter_label: UILabel!
    
    var clickCount : Int?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
//        self.performSegue(withIdentifier: "goSecond", sender: nil)
        self.performSegue(withIdentifier: "goToCount", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "zxc" {
            print("goSecond's segue clicked")
            
            if let destination = segue.destination as? SecondViewController
                , let parameter = sender as? String
            {
                destination.param = parameter
            } else {
                
            }

        } else if segue.identifier == "goToCount" {
            
            if let destination = segue.destination as? CountViewController {
                destination.clickCount = clickCount
            }
            
            
        }
    }
//
//
//
//    @IBAction func buttonTabbed(_ sender : UIButton) {
//        if sender.currentTitle == "X" {
//            sender.setTitle("It's X", for: .normal)
//        } else {
//            sender.setTitle("It isn't X", for: .normal)
//        }
//    }
    
    @IBAction func goToSecond(_ sender: Any) {
        self.performSegue(withIdentifier: "zxc", sender: 1)
    }
    
    
    @IBAction func onCounterClick(_ sender: Any) {
        clickCount = (clickCount ?? 0) + 1
        self.view_conuter_label.text = "\(clickCount ?? 0)"
        print("Counter clicked! \(String(describing: clickCount))")
    }
}

