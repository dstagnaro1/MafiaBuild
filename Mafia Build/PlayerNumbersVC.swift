 //
//  PlayerNumbersVC.swift
//  Mafia Build
//
//  Created by Daniel Stagnaro on 6/12/16.
//  Copyright © 2016 Daniel Stagnaro. All rights reserved.
//

import UIKit

class PlayerNumbersVC: UIViewController {

    var playersInGame: Int = 6

    @IBOutlet weak var numberOfPlayersLabel: UILabel!    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updatePlayersLabel()
    }

    @IBAction func stepperPressed(sender: UIStepper) {
        playersInGame = Int(sender.value)
        updatePlayersLabel()
    }
    
    func updatePlayersLabel () {
        numberOfPlayersLabel.text = "\(playersInGame)"
    }
    
    @IBAction func loadNames(sender: AnyObject) {
        let movingData = playersInGame
        performSegueWithIdentifier("goToNames", sender: movingData)
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "goToNames" {
            if let namesVC = segue.destinationViewController as? NamesVC {
                if let data = sender as? Int {
                    namesVC.players = data
                }
            }
        }
    }
    
    // identifier to use is "goToNames"
}
