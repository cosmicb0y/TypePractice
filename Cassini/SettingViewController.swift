//
//  SettingViewController.swift
//  TypePractice
//
//  Created by HyoWon Jang on 6/16/16.
//  Copyright © 2016 COMP420. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    
    @IBAction func redButton() {
        SettingData.sharedInstance.color = UIColor.redColor()
    }
    
    @IBAction func blackButton() {
        SettingData.sharedInstance.color = UIColor.blackColor()
    }
    
    @IBAction func blueButton() {
        SettingData.sharedInstance.color = UIColor.blueColor()
    }

}
