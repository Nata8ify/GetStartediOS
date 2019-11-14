//
//  SecondViewController.swift
//  iosgs
//
//  Created by Nattawut Pichaiwattnphon on 14/11/19.
//  Copyright © 2019 Nattawut Pichaiwattnphon. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    public var param:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Param -> \(param ?? "nillll")")
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
