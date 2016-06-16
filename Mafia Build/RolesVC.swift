//
//  RolesVC.swift
//  Mafia Build
//
//  Created by Daniel Stagnaro on 6/15/16.
//  Copyright © 2016 Daniel Stagnaro. All rights reserved.
//

import UIKit

class RolesVC: UIViewController {

    @IBOutlet weak var mafiaAmountLabel: UILabel!
    @IBOutlet weak var doctorsAmountLabel: UILabel!
    @IBOutlet weak var townsPeopleAmountLabel: UILabel!
    
    var mafiaAmount: Int = 1
    var doctorsAmount: Int = 1
    var townsPeopleAmount: Int = 4
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateLabels()
    }

    @IBAction func onStepperPressed(sender: UIStepper) {
        
        if sender.tag == 1 {
            mafiaAmount = Int(sender.value)
        } else if sender.tag == 2 {
            doctorsAmount = Int(sender.value)
        } else if sender.tag == 3 {
            townsPeopleAmount = Int(sender.value)
        }
        
        updateLabels()
        
    }
    
    func updateLabels() {
        mafiaAmountLabel.text = "\(mafiaAmount)"
        doctorsAmountLabel.text = "\(doctorsAmount)"
        townsPeopleAmountLabel.text = "\(townsPeopleAmount)"
    }

}
