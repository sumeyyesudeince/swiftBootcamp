//
//  ViewController.swift
//  Calculator
//
//  Created by Sude İnce on 10.10.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelIslem: UILabel!
    @IBOutlet weak var labelSonuc: UILabel!
    
    var workings: String = ""
    var currentNumber: String = ""
    var total: Double = 0
    var isDecimal: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        clearAll()
    }
    
    func clearAll() {
        workings = ""
        currentNumber = ""
        total = 0
        isDecimal = false
        labelIslem.text = ""
        labelSonuc.text = ""
    }
    
    @IBAction func tapAC(_ sender: Any) {
        clearAll()
    }
    
    @IBAction func tapC(_ sender: Any) {
        if !currentNumber.isEmpty {
            currentNumber.removeLast()
            labelIslem.text = currentNumber
        }
    }
    
    @IBAction func tapZero(_ sender: Any) {
        appendNumber("0")
    }
    @IBAction func tapOne(_ sender: Any) {
        appendNumber("1")
    }
    @IBAction func tapTwo(_ sender: Any) {
        appendNumber("2")
    }
    @IBAction func topThree(_ sender: Any) {
        appendNumber("3")
    }
    @IBAction func tapFour(_ sender: Any) {
        appendNumber("4")
    }
    @IBAction func tapFive(_ sender: Any) {
        appendNumber("5")
    }
    @IBAction func tapSix(_ sender: Any) {
        appendNumber("6")
    }
    @IBAction func tapSeven(_ sender: Any) {
        appendNumber("7")
    }
    @IBAction func tapEight(_ sender: Any) {
        appendNumber("8")
    }
    @IBAction func topNine(_ sender: Any) {
        appendNumber("9")
    }
    
    func appendNumber(_ number: String) {
        currentNumber += number
        labelIslem.text = currentNumber
    }
    
    @IBAction func topAdd(_ sender: Any) {
        if let number = Double(currentNumber) {
            total += number
            workings += currentNumber + " + "
            currentNumber = ""
            labelIslem.text = workings
            isDecimal = false
        }
    }
    
    @IBAction func tapDecimal(_ sender: Any) {
        if !isDecimal {
            if currentNumber.isEmpty {
                currentNumber = "0"
            }
            currentNumber += "."
            labelIslem.text = currentNumber
            isDecimal = true
        }
    }
    
    @IBAction func tapResult(_ sender: Any) {
        // Hata kontrolü: currentNumber boşsa toplama yapma
        guard !currentNumber.isEmpty else {
            labelSonuc.text = "Error"
            return
        }
        
        if let number = Double(currentNumber) {
            total += number
            workings += currentNumber
            labelSonuc.text = String(total)
            labelIslem.text = workings // İşlemi göster
            currentNumber = ""
            isDecimal = false
            workings = ""
        } else {
            labelSonuc.text = "Error"
        }
    }
}

