//
//  ViewController.swift
//  someMusicApp
//
//  Created by Derek Tang on 10/12/20.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func rejectButton(_ sender: Any) {
        self.performSegue(withIdentifier: "secondView", sender: self)
        
    }
    @IBAction func acceptButton(_ sender: Any) {
        self.performSegue(withIdentifier: "secondView", sender: self)
    }
}

