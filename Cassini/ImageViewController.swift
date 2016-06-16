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
        case 3:
            break
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
            textField.textColor = SettingData.sharedInstance.color
            textFieldString = newValue
        }
    }
    
    var wordArrayIndex = 0
    
    var mode = 0 // 1: 단어, 2: 긴글, 3: 랭킹, 4: 설정
    
    struct rank {
        var name: String
        var score: Int
        init(name: String, score: Int){
            self.name = name
            self.score = score
        }
    }
    
    private let defaults = NSUserDefaults.standardUserDefaults()
    
    var rankingS: [Int] {
        get { return defaults.objectForKey(History.DefaultsKey) as? [Int] ?? [] }
        set { defaults.setObject(newValue, forKey: History.DefaultsKey) }
    }

    var rankingN: [String] {
        get { return defaults.objectForKey(History.SegueIdentifiter) as? [String] ?? [] }
        set { defaults.setObject(newValue, forKey: History.SegueIdentifiter) }
    }
    
    private struct History {
        static let DefaultsKey = "ImageViewController.History"
        static let SegueIdentifiter = "Show Diagnostic History"
    }
        
    var score = 0;
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        if textInputField.text == textFieldString {
            self.textField.textColor = UIColor.blackColor()
            score += 100
            ScoreLabel.text = "\(score)"
            print("correct")
            if (wordArray.count - 1 > wordArrayIndex)
            {
                wordArrayIndex += 1
                textFieldAndString = wordArray[wordArrayIndex]
            }
            textInputField.text = ""
        } else {
            self.textField.textColor = UIColor.redColor()
            score -= 50
            ScoreLabel.text = "\(score)"
            print("wrong")
        }
        return true
    }
    
    var counter = 10
    var timer = NSTimer()
    
    @IBAction func StartButton(sender: AnyObject) {
        counter = 10
        score = 0
        TimeLabel.text = "\(counter)"
        ScoreLabel.text = "\(score)"
        timer.invalidate()
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: #selector(timerAction),userInfo: nil, repeats: true )
    }
    
    @IBOutlet weak var TimeLabel: UILabel!
    @IBOutlet weak var ScoreLabel: UILabel!
    
    func timerAction() {
        counter -= 1
        TimeLabel.text = "\(counter)"
        
        if(counter == 0)
        {
            timer.invalidate()
            rankingN.append(NameViewController.sharedInstance.name)
            rankingS.append(score)
            print("\(rankingN)")
            print("\(rankingS)")
            
        }
    }
    
}