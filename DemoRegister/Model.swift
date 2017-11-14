//
//  Model.swift
//  DemoRegister
//
//  Created by KuAnh on 12/11/2017.
//  Copyright © 2017 KuAnh. All rights reserved.
//

import Foundation

typealias JSON = Dictionary<AnyHashable, Any>

struct City {
    var code: Int
    var city: String
    
    init?(json: JSON) {
        guard let cityCode = json["CityCode"] as? Int, let name = json["Name"] as? String else {
            return nil
        }
        self.code = cityCode
        self.city = name
    }
}

struct Districts {
    var cityCode: Int
    var districtsCode: Int
    var nameDistricts: String
    
    init?(json: JSON) {
        guard let cityCode = json["CityCode"] as? Int, let districtsCode = json["DistrictCode"] as? Int, let name = json["Name"] as? String else {
            return nil
        }
        self.cityCode = cityCode
        self.districtsCode = districtsCode
        self.nameDistricts = name
    }
}


