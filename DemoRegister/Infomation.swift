//
//  Infomation.swift
//  DemoRegister
//
//  Created by KuAnh on 14/11/2017.
//  Copyright © 2017 KuAnh. All rights reserved.
//

import UIKit

class Infomation {
    var cityName: String
    var districtName: String
    var gender: String
    var age: Int
    
    init(city: String, district: String, gender: String, age: Int) {
        self.cityName = city
        self.districtName = district
        self.gender = gender
        self.age = age
    }
}

