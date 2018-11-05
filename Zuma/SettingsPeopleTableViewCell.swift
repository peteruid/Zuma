//
//  SettingsPeopleTableViewCell.swift
//  Zuma
//
//  Created by Peter Nelson on 11/5/18.
//  Copyright © 2018 Native. All rights reserved.
//

import UIKit

class SettingsPeopleTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    @IBOutlet weak var phoneNumber: UILabel!
    @IBOutlet weak var personName: UITextField!
    @IBOutlet weak var adminSwitch: UISwitch!
    @IBOutlet weak var adminLabel: UILabel!
    @IBOutlet weak var youLabel: UILabel!
    
    @IBAction func onAdminSwitchClicked(_ sender: Any) {
        if (adminSwitch.isOn) {
            adminLabel.isHidden = false
        } else {
            adminLabel.isHidden = true
        }
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
