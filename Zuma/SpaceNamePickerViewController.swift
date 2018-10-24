//
//  SpaceNamePickerViewController.swift
//  Zuma
//
//  Created by Peter Nelson on 10/24/18.
//  Copyright © 2018 Native. All rights reserved.
//

import UIKit

class SpaceNamePickerViewController: UIViewController, UITableViewDataSource {

    let sections = ["Fruit", "Vegetables"]
    let fruit = ["Apple", "Orange", "Mango"]
    let vegetables = ["Carrot", "Broccoli", "Cucumber"]
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[section]
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            // Fruit Section
            return fruit.count
        case 1:
            // Vegetable Section
            return vegetables.count
        default:
            return 0
        }
    }
    
    
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Create an object of the dynamic cell "PlainCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: "SpaceNameCell", for: indexPath)
        // Depending on the section, fill the textLabel with the relevant text
        switch indexPath.section {
        case 0:
            // Fruit Section
            cell.textLabel?.text = fruit[indexPath.row]
            break
        case 1:
            // Vegetable Section
            cell.textLabel?.text = vegetables[indexPath.row]
            break
        default:
            break
        }
        
        // Return the configured cell
        return cell
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func onNetworkPasswordSubmit(_ sender: Any) {
        performSegue(withIdentifier:"unwind.to.zuma.search.found.view", sender: self)
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
