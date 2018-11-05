//
//  SettingsPeopleViewController.swift
//  Zuma
//
//  Created by Peter Nelson on 11/5/18.
//  Copyright © 2018 Native. All rights reserved.
//

import UIKit

class SettingsPeopleViewController: UIViewController, UITableViewDataSource {

    let sections = ["Existing", "New"]
    let existing = ["Master Bedroom", "Living Room", "Cora's Room", "John's Room", "Garage", "Kitchen", "Bathroom"]
    let suggestions = ["Patio", "Den", "Bat Cave", "Bathroom", "Den", "Study"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
         return existing.count
         case 1:
         // Vegetable Section
         return suggestions.count
         default:
         return 0
         }
 
    }
    
    
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Create an object of the dynamic cell "PlainCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: "PeopleDetailsCell", for: indexPath)
        
        // Depending on the section, fill the textLabel with the relevant text
        
         switch indexPath.section {
         case 0:
         // Fruit Section
         cell.textLabel?.text = existing[indexPath.row]
         break
         case 1:
         // Vegetable Section
         cell.textLabel?.text = suggestions[indexPath.row]
         break
         default:
         break
         }
 
        
        // Return the configured cell
        return cell
        
    }

}
