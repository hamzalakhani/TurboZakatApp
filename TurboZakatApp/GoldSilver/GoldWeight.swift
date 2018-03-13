//
//  goldWeight.swift
//  TurboZakatApp
//
//  Created by Hamza Lakhani on 2018-03-12.
//  Copyright © 2018 Hamza Lakhani. All rights reserved.
//

import UIKit

class GoldWeight: UIViewController {

    var goldWeight = Double()
    
    @IBOutlet weak var goldWeightField: UITextField!
    @IBAction func sendGold(_ sender: Any) {
        
        if goldWeightField.text != ""
        {
            performSegue(withIdentifier: "goldWeightSegue", sender: self)
        }
        
    }
    
    override func viewDidLoad() {
        
        
        
        super.viewDidLoad()


    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
       
        let gSC = segue.destination as? GoldSilver
        gSC?.goldWeightSent =     Double(goldWeightField.text!)!

        
    }
    


}
