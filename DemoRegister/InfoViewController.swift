//
//  InfoViewController.swift
//  DemoRegister
//
//  Created by KuAnh on 14/11/2017.
//  Copyright © 2017 KuAnh. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {

    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var districtLabel: UILabel!
    @IBOutlet weak var Gender: UILabel!
    @IBOutlet weak var age: UILabel!
    
    var info: Infomation?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
