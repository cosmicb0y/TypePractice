//
//  ViewController.swift
//  Cassini
//
//  Created by HyoWon Jang on 5/9/16.
//  Copyright © 2016 COMP420. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let ivc = segue.destinationViewController as? ImageViewController {
            if let identifier = segue.identifier {
                switch identifier {
                case "단어연습":
                    ivc.mode = 1
                    ivc.title = "단어연습"
                case "긴글연습":
                    ivc.mode = 2
                    ivc.title = "긴글연습"
                case "랭킹":
                    ivc.mode = 3
                    ivc.title = "랭킹"
                case "설정":
                    ivc.mode = 4
                    ivc.title = "설정"
                default: break
                }
            }
        }
    }

}

