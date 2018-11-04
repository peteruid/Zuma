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
    }
    
    func setupNavBar() {
        navigationController?.navigationBar.prefersLargeTitles = false
        //navigationController?.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.darkGray]
        //navigationItem.title = "Zuma Home"
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
