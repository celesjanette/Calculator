//
//  ViewController.swift
//  Calculator
//
//  Created by Celes Augustus on 2/25/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtFirstValue: UITextField!
    @IBOutlet weak var txtSecondValue: UITextField!
    
    @IBOutlet weak var lblResult: UILabel!
    
    @IBAction func addButton(_ sender: Any) {
        calculateResult(operation: "+")
    }
    
    @IBAction func subtractButton(_ sender: Any) {
        calculateResult(operation: "-")
    }
    
    @IBAction func multiplyButton(_ sender: Any) {
        calculateResult(operation: "X")
    }
    
    @IBAction func divideButton(_ sender: Any) {
        calculateResult(operation: "/")
    }
    func calculateResult(operation: String) {
            guard let firstValueText = txtFirstValue.text,
                  let secondValueText = txtSecondValue.text,
                  let firstValue = Double(firstValueText),
                  let secondValue = Double(secondValueText) else {
                lblResult.text = "Invalid input"
                return
            }
        var result: Double = 0.0
                
                switch operation {
                case "+":
                    result = firstValue + secondValue
                case "-":
                    result = firstValue - secondValue
                case "X":
                    result = firstValue * secondValue
                case "/":
                    if secondValue != 0 {
                        result = firstValue / secondValue
                    } else {
                        lblResult.text = "Cannot divide by zero"
                        return
                    }
                default:
                    lblResult.text = "Invalid operation"
                    return
                }
                
                lblResult.text = "Answer: \(result)"
            }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

