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
    //    let backButton = UIBarButtonItem(title: "", style: .plain, target: navigationController, action: nil)
    //    navigationItem.leftBarButtonItem = backButton
        
        
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
            sharedAppDelegate().currentZumaBeingSetUpIsMaster = false
        } else {
            sharedAppDelegate().currentZumaBeingSetUpIsMaster = true
        }
        
        if (sharedAppDelegate().networkEstablished) {
            performSegue(withIdentifier:"Choose Zuma Space", sender: self)
        } else {
            performSegue(withIdentifier:"Choose Zuma Network", sender: self)
        }
    }
    
    @IBOutlet weak var satellite1: UIButton!
    @IBOutlet weak var satellite2: UIButton!
    @IBOutlet weak var satelliteDistance1: UILabel!
    @IBOutlet weak var satelliteDistance2: UILabel!
    
    func sharedAppDelegate() -> AppDelegate {
        return UIApplication.shared.delegate as! AppDelegate
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if (sharedAppDelegate().networkEstablished == false) {
            satellite1.isHidden = true
            satellite2.isHidden = true
            satelliteDistance1.isHidden = true
            satelliteDistance2.isHidden = true
        } else {
            satellite1.isHidden = false
            satellite2.isHidden = false
            satelliteDistance1.isHidden = false
            satelliteDistance2.isHidden = false
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
