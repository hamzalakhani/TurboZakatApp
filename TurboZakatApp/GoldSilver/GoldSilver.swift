//
//  GoldSilver.swift
//  TurboZakatApp
//
//  Created by Hamza Lakhani on 2018-03-05.
//  Copyright © 2018 Hamza Lakhani. All rights reserved.
//

import UIKit

class GoldSilver: UIViewController, UITextFieldDelegate {
    var goldWeight =   Double()
    var goldPurity =   Double()
    var currentGoldValue = Double()
    
    //Gold calculation outlets
    
    
    @IBOutlet weak var goldPurityField: UITextField!
    
    @IBOutlet weak var totalAmount: UILabel!
    
    @IBAction func calculateGoldWP(_ sender: Any) {
        if (( goldPurityField.text) != nil){
        goldWeight = Double(goldWeightField.text!)!
        goldPurity = Double(goldPurityField.text!)!
        currentGoldValue = 53.17
        
        let value  = (goldPurity/24 * 100) * goldWeight * currentGoldValue

        totalAmount.text = String(format: "%.2f", value)
    
        }else {
            
                goldPurityField.text = ""
                goldWeightField.text = ""
                totalAmount.text = ""
                }
    }
        
        

        
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        goldWeightField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//
//        if segue.identifier == "weightSegue" {
//            
//            let goldWeightController = segue.destination as! GoldSilver
//
//             = goldWeightField.text
//        }
//    }

    
//    if let goldWeight = Double(goldWeightField.text!), let goldPurity = Double(goldPurityField.text!){
//        //need to add api call to get current gold value or save gold value to variable
//
//        let currentGoldValue = 53.17
//        let value = (goldPurity/24 * 100) * goldWeight * currentGoldValue
//        let lessThanPurity = 0
//
//
//        // to make sure threshold of purity is up held
//        if  (goldPurity.isLess(than: 0.5)){
//            totalAmount.text = String(format: "%.2f", lessThanPurity)
//
//        }else{
//
//            totalAmount.text = String(format: "%.2f", value)
//
//        }
//
//
//        // make it work
//        if (!goldWeightField.isEditing) && ( !goldPurityField.isEditing) {
//            goldPurityField.text = String(format: "%.2f", goldPurity)
//            goldWeightField.text = String(format: "%.2f", goldWeight)
//
//        }
//        totalAmount.text = String(format: "%.2f", value)
//
//
//
//    }else {
//
//    goldPurityField.text = ""
//    goldWeightField.text = ""
//    totalAmount.text = ""
//    }
}
