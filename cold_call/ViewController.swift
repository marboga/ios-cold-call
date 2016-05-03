//
//  ViewController.swift
//  cold_call
//
//  Created by Michael Arbogast on 5/3/16.
//  Copyright © 2016 Michael Arbogast. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    
    let names = ["Allison", "Barbara", "Chuck", "Deborah", "Edgar", "Fox", "Grant", "Hillary", "Ivonna", "Jack", "Kellen", "Laura", "Manu", "Nathaniel", "Olivia", "Perry", "Quina", "Rodney", "Sierra", "Theo", "Una", "Victoria", "Willa", "Xander", "Yoldo", "Zoe"]
    
    var currentName = 0
    @IBAction func buttonLabel(sender: UIButton) {
        print("button pressed")
        updateUI()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    func updateUI() {
        let length = UInt32(names.count - 1)
        currentName = Int(arc4random_uniform(length))
        nameLabel.text = names[currentName]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

