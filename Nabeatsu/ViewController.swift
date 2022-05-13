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
    
    func checkNumber() -> String {
        //0は除外
        if number == 0{
            return "(゜o゜)"
        }
        //7の倍数は除外
        if number % 7 == 0{
            return "(゜o゜)"
        }
        // 問題1: 3の倍数かどうか調べる
        if number % 3 == 0{
            return "ﾍ(ﾟ∀ﾟﾍ)ｱﾋｬ"
        }
        // 問題4をやるときは問題3と問題2の答えを消してから書こう
        var checkNum: Int = number
        while checkNum != 0{
            if checkNum % 10 == 3{
                return "ﾍ(ﾟ∀ﾟﾍ)ｱﾋｬ"
            }else{
                checkNum = checkNum / 10
            }
        }
        if number % 5 == 0 {
            return "υ´• ﻌ •`υ"
        }
        if isPrimeNumbers(){
            return "( ｰ`дｰ´)ｷﾘｯ"
        }
        return "(゜o゜)"
    }
    
    func isPrimeNumbers() -> Bool{
        var y:Int = 0

        for divisor in 1...number{
            if number % divisor == 0{
                y += 1
            }
        }
        
        if y == 2{
            return true
        }else {
            return false
        }
    }
    
    @IBAction func plusButton(){
        number = number + 1
        updateText()
    }
    
    @IBAction func clear(){
        number = 0
        updateText()
    }
    
    @IBAction func random(){
        number = Int.random(in: 1...99)
        updateText()
    }

    func updateText(){
        countLabel.text = String(number)
        faceLabel.text = checkNumber()
    }

}

