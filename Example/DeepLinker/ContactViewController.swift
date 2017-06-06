//
//  ViewController.swift
//  DeepLinker
//
//  Created by alexshubin22@gmail.com on 05/30/2017.
//  Copyright (c) 2017 alexshubin22@gmail.com. All rights reserved.
//

import UIKit
import DeepLinker

class ContactViewController: UIViewController {

    @IBOutlet weak var contactTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideKeyboardWhenTappedAround()
    }
    
    @IBAction func skypeCall(_ sender: UIButton) {
        DeepLinker.Skype.performAction(.call, contact: contactTextField.text!)
    }
    @IBAction func skypeVideo(_ sender: UIButton) {
        DeepLinker.Skype.performAction(.video, contact: contactTextField.text!)
    }
    @IBAction func skypeChat(_ sender: UIButton) {
        DeepLinker.Skype.performAction(.chat, contact: contactTextField.text!)
    }
    
    @IBAction func phoneCall(_ sender: UIButton) {
        DeepLinker.Phone.performCall(phoneNumber: contactTextField.text!)
    }
    
    @IBAction func openSettings(_ sender: UIButton) {
        DeepLinker.Settings.open()
    }

}

