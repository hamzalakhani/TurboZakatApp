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
    override func viewDidLoad() {
        
        
        
        super.viewDidLoad()
        goldWeight = Double(goldWeightField.text!)!


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    


}
