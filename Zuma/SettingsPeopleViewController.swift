//
//  SettingsPeopleViewController.swift
//  Zuma
//
//  Created by Peter Nelson on 11/5/18.
//  Copyright © 2018 Native. All rights reserved.
//

import UIKit

class SettingsPeopleViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    let sectionTitles = ["Adults", "Children"]
    let adults = ["1.408.723.4963", "44.7574.123456", "1.555.1234"]
    let kids = ["1.408.555.3263", "1.326.323.6634", "44.1234.643754"]
    let adultNames = ["Peter", "Aileen", "Stephanie"]
    let kidNames = ["John", "Cora", "Lucas"]
    
    
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
    
    /*
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int){
        //view.tintColor = UIColor.red

        //let header = view as! UITableViewHeaderFooterView
        //header.textLabel?.textColor = UIColor.white
        //header.tintColor = UIColor.white
        header.contentView.backgroundColor = .lightGray

    }
    */
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return sectionTitles[section]
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return sectionTitles.count
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        switch section {
         case 0:
            // Adult Section
            return adults.count
         case 1:
            // Children Section
            return kids.count
         default:
            return 0
         }
 
    }
    
    
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Create an object of the dynamic cell "PlainCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: "PeopleDetailsCell", for: indexPath) as! SettingsPeopleTableViewCell
        
        // Depending on the section, fill the textLabel with the relevant text
        
         switch indexPath.section {
         case 0:
            // Adult Section
            //cell.textLabel?.text = adults[indexPath.row]
            cell.phoneNumber.text = adults[indexPath.row]
            cell.personName.text = adultNames[indexPath.row]
            if (indexPath.row > 1) {
                cell.adminLabel.isHidden = true
                cell.adminSwitch.setOn(false, animated: false)
            }
            if (indexPath.row == 0) {
                cell.youLabel.isHidden = false
            }
            break
         case 1:
            // Children Section
            cell.phoneNumber.text = kids[indexPath.row]
            cell.personName.text = kidNames[indexPath.row]
            cell.adminLabel.isHidden = true
            cell.adminSwitch.isHidden = true
            break
         default:
            break
         }
 
        
        // Return the configured cell
        return cell
        
    }

}
