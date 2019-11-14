//
//  CountViewController.swift
//  iosgs
//
//  Created by Nattawut Pichaiwattnphon on 14/11/19.
//  Copyright © 2019 Nattawut Pichaiwattnphon. All rights reserved.
//

import UIKit

class CountViewController: UIViewController {

    public var clickCount : Int?
    @IBOutlet weak var view_counter_label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("clickCount is \(clickCount)")
        self.view_counter_label.text = "\(clickCount ?? 0)"
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
