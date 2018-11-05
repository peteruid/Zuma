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
    
    @IBOutlet weak var alexaDoneCheckImage: UIImageView!
    @IBOutlet weak var spotifyDoneCheckImage: UIImageView!
    @IBOutlet weak var homekitDoneCheckImage: UIImageView!
    
    
    @IBAction func unwindOnServiceSetupComplete(segue: UIStoryboardSegue) {
        //print("unwind segue with ID: %@", segue.identifier!)
    }
    
    @IBAction func onSetupAmazon(_ sender: Any) {
        self.performSegue(withIdentifier:"InitialSetupAmazon", sender: self)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(100)) {
            self.alexaDoneCheckImage.isHidden=false
        }
        
    }
    
    @IBAction func onSetupSpotify(_ sender: Any) {
        self.performSegue(withIdentifier:"InitialSetupSpotify", sender: self)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(100)) {
            self.spotifyDoneCheckImage.isHidden=false
        }
        
    }
    
    @IBAction func onSetupApple(_ sender: Any) {
        self.performSegue(withIdentifier:"InitialSetupApple", sender: self)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(100)) {
            self.homekitDoneCheckImage.isHidden=false
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
