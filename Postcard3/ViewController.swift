//
//  ViewController.swift
//  Postcard3
//
//  Created by Bryan Nova Brey on 6/15/15.
//  Copyright (c) 2015 MythMatrix. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messagelabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var EnterNameTextField: UITextField!
    @IBOutlet weak var EnterMessageTextField: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        //adding comment to test commits
        messagelabel.hidden = false
        messagelabel.text = EnterMessageTextField.text
        messagelabel.textColor = UIColor.redColor()
        
        nameLabel.hidden = false
        nameLabel.text = EnterNameTextField.text
        nameLabel.textColor = UIColor.blueColor()
        
        EnterNameTextField.text = ""
        EnterNameTextField.resignFirstResponder()
    
        EnterMessageTextField.text = ""
        EnterMessageTextField.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

