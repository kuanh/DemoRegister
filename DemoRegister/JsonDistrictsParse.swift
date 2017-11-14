//
//  JsonDistrictsParse.swift
//  DemoRegister
//
//  Created by KuAnh on 12/11/2017.
//  Copyright © 2017 KuAnh. All rights reserved.
//

import Foundation

class JsonDistrictsParse {
    private var districts = [Districts]()
    func jsonDistricts() -> [Districts]? {
        guard let path = Bundle.main.path(forResource: "Districts", ofType: "plist") else {
            return nil
        }
        guard let data = FileManager.default.contents(atPath: path) else {return nil}
        do {
            guard let jsonObject = try? PropertyListSerialization.propertyList(from: data, options: [], format: nil) as? JSON else {
                return nil
            }
            guard let districtsJson = jsonObject!["Districts"] as? [JSON] else { return nil}
            for dist in districtsJson {
                if let districts = Districts(json: dist) {
                    self.districts.append(districts)
                }
            }
        } catch {
            print("error")
        }
        return districts
    }
}
