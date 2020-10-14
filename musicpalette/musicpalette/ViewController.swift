//
//  ViewController.swift
//  musicpalette
//
//  Created by User on 10/13/20.
//  Copyright © 2020 musicpalette. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let artists = ["joji", "rich brian", "drake", "niki"]
    var counter = 0
    var yay: [String] = []

    @IBOutlet weak var artistLabel: UILabel!
    
    @IBOutlet weak var yayButton: UIButton!
    @IBOutlet weak var nayButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
    @IBAction func yayButtonClicked(_ sender: Any) {
        if counter == artists.count {
            counter = 0
        }
        artistLabel.text = artists[counter]
        counter = counter + 1
    }
    @IBAction func nayButtonClicked(_ sender: Any) {
        if counter == artists.count {
            counter = 0
        }
        artistLabel.text = artists[counter]
        counter = counter + 1
    }
    
}

