//
//  ViewController.swift
//  MyCalculator
//
//  Created by kiss pot on 2022/8/13.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var clear: UIButton!
    @IBOutlet weak var division: UIButton!
    @IBOutlet weak var multi: UIButton!
    @IBOutlet weak var equal: UIButton!
    @IBOutlet weak var seven: UIButton!
    @IBOutlet weak var eight: UIButton!
    @IBOutlet weak var nine: UIButton!
    @IBOutlet weak var minus: UIButton!
    @IBOutlet weak var four: UIButton!
    @IBOutlet weak var five: UIButton!
    @IBOutlet weak var six: UIButton!
    @IBOutlet weak var plus: UIButton!
    @IBOutlet weak var one: UIButton!
    @IBOutlet weak var two: UIButton!
    @IBOutlet weak var three: UIButton!
    @IBOutlet weak var zero: UIButton!
    var firstNum:Int = 0
    var secondNum:Int = 0
    var first:Bool = false
    var second:Bool = false
    var sign:String = "+"
    override func viewDidLoad() {
        super.viewDidLoad()
        result.text = "0"
    }
    
    func updateUi(){
        result.text = "\(firstNum)\(sign)\(secondNum)"
    }
    // 点击数字
    @IBAction func cl0(_ sender: Any) {
        if (first) {
            secondNum = 0
            second = true
        } else {
            firstNum = 0
            first = true
        }
        updateUi()
    }
    @IBAction func cl1(_ sender: Any) {
        if (first) {
            secondNum = 1
            second = true
        } else {
            firstNum = 1
            first = true
        }
        updateUi()
    }
    @IBAction func cl2(_ sender: Any) {
        if (first) {
            secondNum = 2
            second = true
        } else {
            firstNum = 2
            first = true
        }
        updateUi()
    }
    @IBAction func cl3(_ sender: Any) {
        if (first) {
            secondNum = 3
            second = true
        } else {
            firstNum = 3
            first = true
        }
        updateUi()
    }
    @IBAction func cl4(_ sender: Any) {
        if (first) {
            secondNum = 4
            second = true
        } else {
            firstNum = 4
            first = true
        }
        updateUi()
    }
    @IBAction func cl5(_ sender: Any) {
        if (first) {
            secondNum = 5
            second = true
        } else {
            firstNum = 5
            first = true
        }
        updateUi()
    }
    @IBAction func cl6(_ sender: Any) {
        if (first) {
            secondNum = 6
            second = true
        } else {
            firstNum = 6
            first = true
        }
        updateUi()
    }
    @IBAction func cl7(_ sender: Any) {
        if (first) {
            secondNum = 7
            second = true
        } else {
            firstNum = 7
            first = true
        }
        updateUi()
    }
    @IBAction func cl8(_ sender: Any) {
        if (first) {
            secondNum = 8
            second = true
        } else {
            firstNum = 8
            first = true
        }
        updateUi()
    }
    @IBAction func cl9(_ sender: Any) {
        if (first) {
            secondNum = 9
            second = true
        } else {
            firstNum = 9
            first = true
        }
        updateUi()
    }
    // 点击符号

    @IBAction func up(_ sender: Any) {
        sign = "+"
        updateUi()
    }
    @IBAction func clDowm(_ sender: Any) {
        sign = "-"
        updateUi()
    }
    @IBAction func mults(_ sender: Any) {
        sign = "X"
        updateUi()
    }
    @IBAction func clDivision(_ sender: Any) {
        sign = "/"
        updateUi()
    }
    @IBAction func clEqual(_ sender: Any) {
        if sign == "+" {
            result.text = String(firstNum + secondNum)
        }else if sign == "-" {
            result.text = String(firstNum - secondNum)
        }else if sign == "X" {
            result.text = String(firstNum * secondNum)
        }else {
            result.text = String(firstNum / secondNum)
        }
        firstNum = 0
        secondNum = 0
        first = false
        second = false
    }
    // 点击清除
    @IBAction func clCLear(_ sender: Any) {
        result.text = "0"
        firstNum = 0
        secondNum = 0
        first = false
        second = false
        sign = "+"
    }

}

