//
//  SelectAgeViewController.swift
//  DemoRegister
//
//  Created by KuAnh on 14/11/2017.
//  Copyright © 2017 KuAnh. All rights reserved.
//

import UIKit

class SelectAgeViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var viewIndexAge: UIButton!
    @IBOutlet weak var viewListIndexAge: UIView!
    @IBOutlet weak var listIndexAge: UIPickerView!
    
    var selectedIndexAge = true
    var indexAge: String?
    var age = [Int](1...99)

    override func viewDidLoad() {
        super.viewDidLoad()
        listIndexAge.delegate = self
        listIndexAge.dataSource = self

        // Do any additional setup after loading the view.
    }
    @IBAction func clickHideShowView(_ sender: UIButton) {
        if (selectedIndexAge) {
            viewListIndexAge.isHidden = false
        } else {
            viewListIndexAge.isHidden = true
        }
        selectedIndexAge = !selectedIndexAge
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return age.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "\(age[row])"
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        indexAge = "\(age[row])"
        viewIndexAge.setTitle("\(indexAge!) oldYear", for: .selected)
        viewIndexAge.isSelected = true
        viewIndexAge.setTitleColor(UIColor.black, for: .selected)
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
