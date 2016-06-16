//
//  SettingData.swift
//  TypePractice
//
//  Created by HyoWon Jang on 6/16/16.
//  Copyright © 2016 COMP420. All rights reserved.
//

import Foundation
import UIKit

private let data = SettingData()

public class SettingData {
    public var color: UIColor = UIColor.blackColor()
    
    class var sharedInstance: SettingData{
        return data
    }
}
