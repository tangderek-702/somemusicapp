//
//  MoreAboutArtistViewController.swift
//  musicpalette
//
//  Created by User on 11/27/20.
//  Copyright © 2020 musicpalette. All rights reserved.
//

import Foundation
import UIKit



class MoreAboutArtistViewController: UIViewController {
    
    var name : String = ""
    var bio : String = ""

    @IBOutlet weak var artistName: UILabel!
    
    @IBOutlet weak var artistBio: UILabel!
    
    init(name: String, bio: String) {
        self.name = name
        self.bio = bio
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        artistName.text = name
        artistBio.text = bio
        super.viewDidLoad()
    }
}
