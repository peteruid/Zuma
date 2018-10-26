//
//  ZumaInstallationComplete.swift
//  Zuma
//
//  Created by Peter Nelson on 10/26/18.
//  Copyright © 2018 Native. All rights reserved.
//

import UIKit

class ZumaInstallationComplete: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func onDoneButton(_ sender: Any) {
        performSegue(withIdentifier:"unwind.to.room.view", sender: self)
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
