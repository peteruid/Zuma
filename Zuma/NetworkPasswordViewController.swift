//
//  NetworkPasswordViewController.swift
//  Zuma
//
//  Created by Peter Nelson on 10/23/18.
//  Copyright © 2018 Native. All rights reserved.
//

import UIKit

class NetworkPasswordViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func onNetworkPasswordSubmit(_ sender: Any) {
        performSegue(withIdentifier:"unwind.to.zuma.search.found.view", sender: self)
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
