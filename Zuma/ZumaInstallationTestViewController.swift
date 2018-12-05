//
//  ZumaInstallationTestViewController.swift
//  Zuma
//
//  Created by Peter Nelson on 12/4/18.
//  Copyright © 2018 Native. All rights reserved.
//

import UIKit

class ZumaInstallationTestViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupButtonNavigation()
    }
    
    
    func setupButtonNavigation() {
        
        
        let successButton : UIView = self.view.viewWithTag(1)! as UIView
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(successNormalTap(_:)))
        tapGesture.numberOfTapsRequired = 1
        successButton.addGestureRecognizer(tapGesture)
        
        let longGesture = UILongPressGestureRecognizer(target: self, action: #selector(successLongTap(_:)))
        successButton.addGestureRecognizer(longGesture)
        
        
        let failureButton : UIView = self.view.viewWithTag(2)! as UIView
        
        let tapGesture2 = UITapGestureRecognizer(target: self, action: #selector(failureNormalTap(_:)))
        tapGesture.numberOfTapsRequired = 1
        failureButton.addGestureRecognizer(tapGesture2)
        
        let longGesture2 = UILongPressGestureRecognizer(target: self, action: #selector(failureLongTap(_:)))
        failureButton.addGestureRecognizer(longGesture2)
        
    }
    
    
    @objc func successNormalTap(_ sender: UIGestureRecognizer){
        //print("Normal tap")
        self.performSegue(withIdentifier:"InstallSuccessSegue", sender: sender)
    }
    
    @objc func successLongTap(_ sender: UIGestureRecognizer){
        
        if sender.state == .ended {
            //print("LongTap Ended")
            self.performSegue(withIdentifier:"InstallSuccessSegue", sender: sender)
        }
        //else if sender.state == .began {
        //print("LongTap Started")
        //}
    }
    
    @objc func failureNormalTap(_ sender: UIGestureRecognizer){
        //print("Normal tap")
        self.performSegue(withIdentifier:"InstallationTroubleshootingSegue", sender: sender)
    }
    
    @objc func failureLongTap(_ sender: UIGestureRecognizer){
        
        if sender.state == .ended {
            //print("LongTap Ended")
            self.performSegue(withIdentifier:"InstallationTroubleshootingSegue", sender: sender)
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
