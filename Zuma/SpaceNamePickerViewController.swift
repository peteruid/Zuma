//
//  SpaceNamePickerViewController.swift
//  Zuma
//
//  Created by Peter Nelson on 10/24/18.
//  Copyright © 2018 Native. All rights reserved.
//

import UIKit

class SpaceNamePickerViewController: UIViewController, UITableViewDataSource {
    

    var isMaster:Bool = false
    let sections = ["Existing", "Room Name"]
    let existing = ["Master Bedroom", "Living Room", "Cora's Room", "John's Room", "Garage", "Kitchen", "Bathroom"]
    let suggestions = ["Dining Room", "Patio", "Den", "Bat Cave", "Bathroom", "Den", "Study"]
    
    
    @IBOutlet weak var directionsLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        isMaster = sharedAppDelegate().currentZumaBeingSetUpIsMaster
        
        if (isMaster) {
            //self.title = "Name this Space"
            titleLabel.text = "I name\nthis\nroom..."
            directionsLabel.text = "                                      so let's give this new Zuma area a name.  Choose from the list, or make your own:"
        } else {
            //self.title = "Choose a Space"
            titleLabel.text = "Where\nare\nyou?"
            directionsLabel.text = "                                      so please choose an existing space in your home for this satellite Zuma from the list below."
        }
    }
    
    func sharedAppDelegate() -> AppDelegate {
        return UIApplication.shared.delegate as! AppDelegate
    }
    
    

    
    
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {

        if (isMaster) {
            return sections[1]
        }
        
        return sections[0]
        
        //return sections[section]
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1;
        //return sections.count
    }
   
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if (isMaster) {
            return suggestions.count
        }
        
        return existing.count
        
    }
    
    
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Create an object of the dynamic cell "PlainCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: "SpaceNameCell", for: indexPath)
        
        // Depending on the section, fill the textLabel with the relevant text
        if (isMaster) {
            cell.textLabel?.text = suggestions[indexPath.row]
        } else {
            cell.textLabel?.text = existing[indexPath.row]
        }
        
        // Return the configured cell
        return cell
        
    }
    
    
    



    @IBAction func onNetworkPasswordSubmit(_ sender: Any) {
        sharedAppDelegate().networkEstablished = true;
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
