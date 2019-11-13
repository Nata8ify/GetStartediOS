//
//  ViewController.swift
//  iosgs
//
//  Created by Nattawut Pichaiwattnphon on 10/11/19.
//  Copyright © 2019 Nattawut Pichaiwattnphon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var param:String?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.performSegue(withIdentifier: "Upto", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Upto" {
            if let destination = segue.destination as? ViewController {
                destination.param = ""
            }
            
        }
    }
    
    

    @IBAction func buttonTabbed(_ sender : UIButton) {
        if sender.currentTitle == "X" {
            sender.setTitle("It's X", for: .normal)
        } else {
            sender.setTitle("It isn't X", for: .normal)
        }
    }
    
}

