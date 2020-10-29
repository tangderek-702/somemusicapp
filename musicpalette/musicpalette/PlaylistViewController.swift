//
//  PlaylistViewController.swift
//  musicpalette
//
//  Created by Michelle Cheung on 10/29/20.
//  Copyright © 2020 musicpalette. All rights reserved.
//

import UIKit

class PlaylistViewController: UIViewController {
    
    var playlist : String = ""

    @IBOutlet weak var playlistLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        playlistLabel.text = playlist

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
