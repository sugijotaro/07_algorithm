//
//  ViewController.swift
//  Nabeatsu
//
//  Created by nagata on 2017/06/19.
//  Copyright © 2017年 Life is Tech!. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var number: Int = 0
    @IBOutlet var countLabel: UILabel!
    @IBOutlet var faceLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func isAho() -> Bool {
        //0は除外
        if number == 0{
            return false
        }
        // 問題1: 3の倍数かどうか調べる
        if number % 3 == 0{
            return true
        }
        // 問題4をやるときは問題3と問題2の答えを消してから書こう
        var checkNum: Int = number
        while checkNum != 0{
            if checkNum % 10 == 3{
                return true
            }else{
                checkNum = checkNum / 10
            }
        }
        
        return false
    }
    @IBAction func plusButton(){
        number = number + 1
        updateText()
    }
    
    @IBAction func clear(){
        number = 0
        updateText()
    }

    func updateText(){
        countLabel.text = String(number)
        
        if isAho() == true {
            faceLabel.text = "ﾍ(ﾟ∀ﾟﾍ)ｱﾋｬ"
        } else {
            faceLabel.text = "(゜o゜)"
        }
    }

}

