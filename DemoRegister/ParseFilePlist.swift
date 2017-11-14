//
//  ParseFilePlist.swift
//  DemoRegister
//
//  Created by KuAnh on 12/11/2017.
//  Copyright © 2017 KuAnh. All rights reserved.
//

import Foundation

class ParseFilePlist {
    private var cities = [City]()
    func cityJSon() -> [City]? {
        guard let plistPath = Bundle.main.path(forResource: "Cities", ofType: "plist") else {
            return nil
        }
        guard let plistData = FileManager.default.contents(atPath: plistPath) else {
            return nil
        }
        do {
//            var format = PropertyListSerialization.PropertyListFormat.xml
            guard let plistDict = try PropertyListSerialization.propertyList(from: plistData, options: [], format: nil) as? JSON else {
                return nil
            }
            guard let cities = plistDict["Cities"] as? [JSON] else {
                return nil
            }
            for cityObject in cities {
                if let city = City(json: cityObject) {
                    self.cities.append(city)
                }
            }
        } catch {
            print("Error")
        }
        return cities
    }
}
