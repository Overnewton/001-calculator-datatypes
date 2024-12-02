//
//  ViewController.swift
//  ex-calculator
//
//  Created by Michael Robertson on 3/12/2024.
//


import UIKit

//Calculate the total amount of money required to purchase an ice cream based on the amount of scoops and total ice creams entered.
class ViewController: UIViewController {
    
    //outlets
    @IBOutlet weak var txtScoopsAmount: UITextField!
    @IBOutlet weak var txtIceCreamAmount: UITextField!
    @IBOutlet weak var lblPriceLabel: UILabel!
    
    
    /*
     Function: Button that calculates the total price of ice cream and prints the amount with a message to the label
     Inputs: txtScoopsAmount, txtIceCreamAmount
     Outputs: lblPriceLabel
     */
    @IBAction func btnBuyIceCreatm(_ sender: Any) {
        
        //Store the amount given in the text boxes to Ints
        let scoopsAmount: Int = Int(txtScoopsAmount.text!)!
        let iceCreamAmount: Int = Int(txtIceCreamAmount.text!)!
        
        //Calculate the total amount, where each scoop is worth $1.5 and is multiplied by the amounts of ice cream bought.
        let totalAmount: Float = (Float(scoopsAmount) * 1.5) * Float(iceCreamAmount)
        

        //Message printed for total amount
        //Using string formatter at the end to display the amount to 2 decimal places through interpolation
        lblPriceLabel.text = "The total amount for your \(iceCreamAmount) ice creatms is: \n" + String(format: "$%.2f", totalAmount)
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

