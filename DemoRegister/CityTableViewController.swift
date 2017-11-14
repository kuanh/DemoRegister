//
//  CityTableViewController.swift
//  DemoRegister
//
//  Created by KuAnh on 12/11/2017.
//  Copyright © 2017 KuAnh. All rights reserved.
//

import UIKit

class CityTableViewController: UITableViewController {

    var jsonParse = ParseFilePlist()
    var cityCode: [Int] = []
    var cityName: [String] = []
    var info = [Infomation]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let cities = jsonParse.cityJSon() else {fatalError("error")}
        for city in cities {
            cityCode.append(city.code)
            cityName.append(city.city)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return cityCode.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "\(cityCode[indexPath.row])"
        cell.detailTextLabel?.text = cityName[indexPath.row]
        return cell
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDistricts" {
            guard let districtVC = segue.destination as? DistrictsTableViewController else {return}
//            guard let selectCell = sender as? DistrictsTableViewCell else {return}
            let indexPath = tableView.indexPathForSelectedRow!
            
            districtVC.cityCodeInDistricts = cityCode[indexPath.row]
        }
    }
    

}
