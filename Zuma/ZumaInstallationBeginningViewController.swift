//
//  ZumaInstallationBeginningViewController.swift
//  Zuma
//
//  Created by Peter Nelson on 11/4/18.
//  Copyright © 2018 Native. All rights reserved.
//

import UIKit

class ZumaInstallationBeginningViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupNavBar()
        setupButtonNavigation()
    }
    
    func setupNavBar() {
        navigationController?.navigationBar.prefersLargeTitles = false
        //navigationController?.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.darkGray]
        //navigationItem.title = "Zuma Home"
        
        // Hide the back button
        let backButton = UIBarButtonItem(title: "", style: .plain, target: navigationController, action: nil)
        navigationItem.leftBarButtonItem = backButton
    }
    
    func setupButtonNavigation() {
        

        let guideButton : UIView = self.view.viewWithTag(1)! as UIView
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(guideNormalTap(_:)))
        tapGesture.numberOfTapsRequired = 1
        guideButton.addGestureRecognizer(tapGesture)
            
        let longGesture = UILongPressGestureRecognizer(target: self, action: #selector(guideLongTap(_:)))
        guideButton.addGestureRecognizer(longGesture)
        
        
        let installDoneButton : UIView = self.view.viewWithTag(2)! as UIView
        
        let tapGesture2 = UITapGestureRecognizer(target: self, action: #selector(installDoneNormalTap(_:)))
        tapGesture.numberOfTapsRequired = 1
        installDoneButton.addGestureRecognizer(tapGesture2)
        
        let longGesture2 = UILongPressGestureRecognizer(target: self, action: #selector(installDoneLongTap(_:)))
        installDoneButton.addGestureRecognizer(longGesture2)

    }
    
    
    @objc func guideNormalTap(_ sender: UIGestureRecognizer){
        //print("Normal tap")
        self.performSegue(withIdentifier:"Installation Guide Segue", sender: sender)
    }
    
    @objc func guideLongTap(_ sender: UIGestureRecognizer){
        
        if sender.state == .ended {
            //print("LongTap Ended")
            self.performSegue(withIdentifier:"Installation Guide Segue", sender: sender)
        }
        //else if sender.state == .began {
        //print("LongTap Started")
        //}
    }
    
    @objc func installDoneNormalTap(_ sender: UIGestureRecognizer){
        //print("Normal tap")
        self.performSegue(withIdentifier:"SetupZumasSegue", sender: sender)
    }
    
    @objc func installDoneLongTap(_ sender: UIGestureRecognizer){
        
        if sender.state == .ended {
            //print("LongTap Ended")
            self.performSegue(withIdentifier:"SetupZumasSegue", sender: sender)
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
