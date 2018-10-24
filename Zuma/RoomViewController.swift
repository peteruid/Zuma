//
//  WelcomeViewController.swift
//  Zuma
//
//  Created by Peter Nelson on 10/23/18.
//  Copyright © 2018 Native. All rights reserved.
//

import UIKit

class RoomViewController: UIViewController {
    

    @IBOutlet weak var buttonPadCora: UIView!
    @IBOutlet weak var buttonPadJohn: UIView!
    @IBOutlet weak var buttonPadKitchen: UIView!
    @IBOutlet weak var buttonPadGarage: UIView!
    @IBOutlet weak var buttonPadBathroom: UIView!
    @IBOutlet weak var buttonPadMasterbedroom: UIView!
    @IBOutlet weak var buttonPadLivingroom: UIView!
    @IBOutlet weak var buttonPadGarden: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        for n in 1...8 {
            let roomButton : UIView = self.view.viewWithTag(n)! as UIView
            
            let tapGesture = UITapGestureRecognizer(target: self, action: #selector(normalTap(_:)))
            tapGesture.numberOfTapsRequired = 1
            
            roomButton.addGestureRecognizer(tapGesture)
            
            let longGesture = UILongPressGestureRecognizer(target: self, action: #selector(longTap(_:)))
            roomButton.addGestureRecognizer(longGesture)
        }
        
        // For first launch - let's pop up a 'no devices found' screen and take users through the flow to add them
        self.performSegue(withIdentifier:"No Devices", sender: self)
    }

    
    @IBAction func RoomButtonClicked(_ sender: Any, forEvent event: UIEvent) {
        self.performSegue(withIdentifier:"Room Clicked", sender: sender)
    }
    
    @IBAction func RoomButtonHeld(_ sender: Any, forEvent event: UIEvent) {
        self.performSegue(withIdentifier:"Room Held", sender: sender)
    }
    

    @IBAction func SearchForZumas(_ sender: Any) {
        self.performSegue(withIdentifier:"Search For Zumas", sender: sender)
    }
    
    @IBAction func unwindToRoomView(segue: UIStoryboardSegue) {
        //print("segue with ID: %@", segue.identifier!)
    }
    
    
    @objc func normalTap(_ sender: UIGestureRecognizer){
        //print("Normal tap")
        self.performSegue(withIdentifier:"Room Clicked", sender: sender)
    }
    
    @objc func longTap(_ sender: UIGestureRecognizer){

        if sender.state == .ended {
            //print("LongTap Ended")
            self.performSegue(withIdentifier:"Room Held", sender: sender)
        }
        //else if sender.state == .began {
            //print("LongTap Started")
        //}
    }
    
}

