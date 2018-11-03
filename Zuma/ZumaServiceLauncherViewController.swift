//
//  ZumaServiceLauncherViewController.swift
//  Zuma
//
//  Created by Peter Nelson on 11/2/18.
//  Copyright © 2018 Native. All rights reserved.
//

import UIKit

class ZumaServiceLauncherViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func unwindOnServiceSetupComplete(segue: UIStoryboardSegue) {
        //print("unwind segue with ID: %@", segue.identifier!)
    }
    
    @IBAction func onSetupAmazon(_ sender: Any) {
        self.performSegue(withIdentifier:"InitialSetupAmazon", sender: self)
    }
    
    @IBAction func onSetupSpotify(_ sender: Any) {
        self.performSegue(withIdentifier:"InitialSetupSpotify", sender: self)
    }
    
    @IBAction func onSetupApple(_ sender: Any) {
        self.performSegue(withIdentifier:"InitialSetupApple", sender: self)
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
