//
//  ZumaInstallationGetAlexaViewController.swift
//  Zuma
//
//  Created by Peter Nelson on 12/4/18.
//  Copyright © 2018 Native. All rights reserved.
//

import UIKit

class ZumaInstallationGetAlexaViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupButtonNavigation()
    }
    
    
    func setupButtonNavigation() {
        
        
        let doneButton : UIView = self.view.viewWithTag(1)! as UIView
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(buttonNormalTap(_:)))
        tapGesture.numberOfTapsRequired = 1
        doneButton.addGestureRecognizer(tapGesture)
        
        let longGesture = UILongPressGestureRecognizer(target: self, action: #selector(buttonLongTap(_:)))
        doneButton.addGestureRecognizer(longGesture)
        
    }
    
    
    @objc func buttonNormalTap(_ sender: UIGestureRecognizer){
        //print("Normal tap")
        self.performSegue(withIdentifier:"FirstSetupAlexaGottenSegue", sender: sender)
    }
    
    @objc func buttonLongTap(_ sender: UIGestureRecognizer){
        
        if sender.state == .ended {
            //print("LongTap Ended")
            self.performSegue(withIdentifier:"FirstSetupAlexaGottenSegue", sender: sender)
        }
        //else if sender.state == .began {
        //print("LongTap Started")
        //}
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
