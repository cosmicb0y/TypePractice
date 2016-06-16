//
//  RankList.swift
//  TypePractice
//
//  Created by HyoWon Jang on 6/17/16.
//  Copyright © 2016 COMP420. All rights reserved.
//

import Foundation

private let sharedName = RankList()


class RankList
{
    var rankList = [Rank]();
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
    
    init(){
        rankList.removeAll()
    }
    
    class var sharedInstance: RankList
    {
        return sharedName
    }
    
    func update()
    {
        self.rankList.removeAll()
        for index in 0...rankingN.count-1 {
            rankList.append(Rank(name: rankingN[index], score: rankingS[index]))
        }
        rankList.sortInPlace({$0.score > $1.score})
    }
}