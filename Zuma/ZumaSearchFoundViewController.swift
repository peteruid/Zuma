//
//  ZumaSearchFoundViewController.swift
//  Zuma
//
//  Created by Peter Nelson on 10/23/18.
//  Copyright © 2018 Native. All rights reserved.
//

import UIKit

class ZumaSearchFoundViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupNavBar()

    }
    
    func setupNavBar() {
        navigationController?.navigationBar.prefersLargeTitles = false
        //navigationController?.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.darkGray]
        //navigationItem.title = "Zuma Home"
        
        // Hide the back button
        let backButton = UIBarButtonItem(title: "", style: .plain, target: navigationController, action: nil)
        navigationItem.leftBarButtonItem = backButton
        
        
        //        let myButton = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 50))
        //        let action = #selector(ZumaSearchFoundViewController.tappedButton)     // target function must have @obj heading or @IBAction heading
        //        myButton.addTarget(self, action: action, for: .touchUpInside)
    }
    
    
//    @objc func tappedButton(_ sender: UIButton?) {
//        print("tapped button")
//    }
    
    
    
    
    @IBAction func onDoneButton(_ sender: Any) {
        performSegue(withIdentifier:"unwind.to.room.view", sender: self)
    }
    
    @IBAction func unwindToZumaSearchFoundView(segue: UIStoryboardSegue) {
    }
    
    
    @IBAction func onZumaButtonClicked(_ sender: UIButton) {
        if (sender.tag == 1) {
            performSegue(withIdentifier:"Choose Zuma Space", sender: self)
            return;
        }
        performSegue(withIdentifier:"Name Zuma Space", sender: self)
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
