//
//  ViewController.swift
//  kalkulator
//
//  Created by Максим Никитюк on 30.06.2022.
//

import UIKit

class ViewController: UIViewController {

    var firstNum : Double = 0
    var secondNum : Double = 0
    var proverka : Bool = false
    var opration : Int = 0
    
    @IBOutlet weak var result: UILabel!
    
    @IBAction func didgits(_ sender: UIButton) {
        let tagButton = sender.tag
        
        if proverka == true{
            result.text = String (tagButton)
            proverka = false
        }else{
            result.text = result.text! + String(tagButton)
        }
        secondNum = Double(result.text!)!
    }
    
    @IBAction func button(_ sender: Any) {
        let tagButton = (sender as! UIButton).tag
        
        if result.text != "" && tagButton != 10 && tagButton != 17 {
            firstNum = Double(result.text!)!
        }
        
        if tagButton == 10 {
            result.text = ""
        }
        if tagButton == 13 {
            result.text = "/"
            opration = tagButton
            proverka = true
        }else if tagButton == 14 {
            result.text = "*"
            opration = tagButton
            proverka = true
        }else if tagButton == 15 {
            result.text = "-"
            opration = tagButton
            proverka = true
        }else if tagButton == 16 {
            result.text = "+"
            opration = tagButton
            proverka = true
        }else if tagButton == 17 {
            if  opration == 13 {
                result.text = String(firstNum / secondNum)
            }else if opration == 14{
                        result.text = String(firstNum * secondNum)
            }else if opration == 15 {
                result.text = String(firstNum - secondNum)
            }else if opration == 16 {
                result.text = String(firstNum + secondNum)
            }
        }
    }
    
}
