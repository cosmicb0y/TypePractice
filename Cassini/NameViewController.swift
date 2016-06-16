//
//  NameViewController.swift
//  TypePractice
//
//  Created by HyoWon Jang on 6/16/16.
//  Copyright © 2016 COMP420. All rights reserved.
//

import UIKit

private let sharedName = NameViewController()

class NameViewController: UIViewController {

    
    @IBOutlet weak var nameField: UITextField!
    
    var name: String = ""
    
    
    @IBAction func buttonPress(sender: UIButton) {
        sharedName.name = nameField.text!
    }
    
    class var sharedInstance: NameViewController{
        return sharedName
    }
}
