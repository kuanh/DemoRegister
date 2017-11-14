//
//  ViewController.swift
//  DemoRegister
//
//  Created by KuAnh on 13/11/2017.
//  Copyright © 2017 KuAnh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet var buttons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    @IBAction func onClickButton(_ sender: UIButton) {
        buttons.forEach {
            $0.isSelected = false
            sender.setTitleColor(UIColor.black, for: .selected)
        }
        sender.isSelected = true
        sender.setTitleColor(UIColor.black, for: .selected)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
 

}
