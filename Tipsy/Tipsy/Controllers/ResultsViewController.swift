//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by 이유진 on 10/8/24.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var billPerPerson = "0.0"
    var tip = 10
    var numberOfPeople = 2
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        totalLabel.text = billPerPerson
        settingsLabel.text = "Split between \(numberOfPeople) people, with \(tip)% tip."

    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
