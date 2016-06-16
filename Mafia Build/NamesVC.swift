//
//  NamesVC.swift
//  Mafia Build
//
//  Created by Daniel Stagnaro on 6/12/16.
//  Copyright © 2016 Daniel Stagnaro. All rights reserved.
//

import UIKit

class NamesVC: UIViewController {

    var players: Int!
    @IBOutlet weak var playersLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        playersLabel.text = "There will be \(players) players and 1 moderator"

    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
