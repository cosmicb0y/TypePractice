//
//  ImageViewController.swift
//  Cassini
//
//  Created by HyoWon Jang on 5/9/16.
//  Copyright © 2016 COMP420. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController, UITextFieldDelegate
{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textInputField.delegate = self

        switch mode {
        case 1:
            wordArray.append("으아니")
            wordArray.append("차")
            wordArray.append("왜")
            textFieldAndString = wordArray[0]
        case 2:
            wordArray.append("페이퍼타오리 요기잉네")
            wordArray.append("요태까지 날 미행한고야?")
            wordArray.append("물논. 그리고 짜네가 또망가료눈굿또 알고있치")
            textFieldAndString = wordArray[0]
        default:
            break
        }
        


    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    
    @IBOutlet weak var textField: UITextView!
    
    @IBOutlet weak var textInputField: UITextField!
    
    var textFieldString: String = "시작"
    
    var wordArray = [String]()
    
    var textFieldAndString: String {
        get { return textFieldString }
        set { textField.text = newValue
            textFieldString = newValue
        }
    }
    
    var wordArrayIndex = 0
    
    var mode = 0 // 1: 단어, 2: 긴글, 3: 랭킹, 4: 설정
    
    
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        if textInputField.text == textFieldString {
            self.textField.textColor = UIColor.blackColor()
            print("correct")
            if (wordArray.count - 1 > wordArrayIndex)
            {
                wordArrayIndex += 1
                textFieldAndString = wordArray[wordArrayIndex]
            }
            textInputField.text = ""
        } else {
            self.textField.textColor = UIColor.redColor()
            print("wrong")
        }
        return true
    }
    
    
    
    
}
