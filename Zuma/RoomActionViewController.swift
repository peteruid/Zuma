//
//  RoomDetailViewController.swift
//  Zuma
//
//  Created by Peter Nelson on 10/23/18.
//  Copyright © 2018 Native. All rights reserved.
//

import UIKit

class RoomActionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func DoneButtonClicked(_ sender: Any) {
        //navigationController?.popViewController(animated: true)
        dismiss(animated: true, completion: nil)
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
