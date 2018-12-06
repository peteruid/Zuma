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
        if ( sharedAppDelegate().firstLaunch == true) {
            doneButton.setTitle( "Let's configure some services", for: .normal)
        }
    }
    
    @IBOutlet weak var doneButton: UIButton!
    
     func sharedAppDelegate() -> AppDelegate {
        return UIApplication.shared.delegate as! AppDelegate
     }
     //UIWindow mainWindow = UIApplication.sharedApplication().delegate?.window
 

    @IBAction func onDoneButton(_ sender: Any) {
        
        if ( sharedAppDelegate().firstLaunch == true) {
            sharedAppDelegate().firstLaunch = false
            performSegue(withIdentifier:"first.run.service.setup", sender: self)
        } else {
            performSegue(withIdentifier:"unwind.to.room.view", sender: self)
        }
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
