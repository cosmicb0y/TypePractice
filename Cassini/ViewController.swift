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
        if let identifier = segue.identifier {
            if identifier == "랭킹" {
                return
            }
        }
        
        if let ivc = segue.destinationViewController as? ImageViewController {
            if let identifier = segue.identifier {
                switch identifier {
                case "단어연습":
                    ivc.mode = 1
                    ivc.title = "단어연습"
                case "긴글연습":
                    ivc.mode = 2
                    ivc.title = "긴글연습"
                default: break
                }
            }
        }
    }

}

