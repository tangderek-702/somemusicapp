//
//  ViewController.swift
//  musicpalette
//
//  Created by User on 10/13/20.
//  Copyright © 2020 musicpalette. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let dataSource = ArtistDataSource()
    
    let artists = ["Joji", "Rich Brian", "Drake", "Niki"]
    let songs = ["Joji": ["Slow Dancing in the Dark", "Daylight", "Tick Tock", "Ew", "Run"],
        "Rich Brian": ["Love in my Pocket", "100 Degrees", "Midsummer Madness", "Yellow", "Sometimes", "When You Come Home"],
        "Drake": ["Hotline Bling", "Headlines", "Toosie Slide", "God's Plan", "One Dance", "In My Feelings"],
        "Niki": ["Indigo", "Nightcrawlers", "lowkey", "I Like U", "See U Never", "La La Lost You"]]
    let images = ["Joji": "joji.jpg", "Rich Brian": "richbrian.jpg","Drake" : "drake.jpg","Niki": "niki.jpg"]

    var counter = 0
    var numArtist = 0
    var yay: [String] = []
    var playlist: [String] = []

    @IBOutlet weak var artistLabel: UILabel!
    
    @IBOutlet weak var yayButton: UIButton!
    @IBOutlet weak var nayButton: UIButton!
    @IBOutlet weak var artistsSoFar: UILabel!
    @IBOutlet weak var songsSoFar: UILabel!
    @IBOutlet weak var artistImage: UIImageView!
    @IBOutlet weak var makePlaylistButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func yayButtonClicked(_ sender: Any) {
        artistsSoFar.text = "";
        songsSoFar.text = "";
        
        if counter == dataSource.artists.count {
            counter = 0
        }
        yay.append(artistLabel.text!)
        
        var artistSongs = songs[artistLabel.text ?? "song"]
        
        var addSong = (artistSongs?.randomElement()!)
        while playlist.contains(addSong ?? "song") {
            addSong = (artistSongs?.randomElement()!)
        }
        playlist.append(addSong ?? "song")
        
        var artistName = artists[counter]
        artistLabel.text = artistName
        artistImage.image = UIImage(named: images[artistName] ?? "image" )
        counter = counter + 1
        
        for name in yay {
            artistsSoFar.text?.append(name + " ")
        }
        for name in playlist {
            songsSoFar.text?.append(name + " ")
        }
        numArtist += 1
        if numArtist > 8 {
            makePlaylistButton.isHidden = false
        }
    }
    @IBAction func nayButtonClicked(_ sender: Any) {
        if counter == artists.count {
            counter = 0
        }
        var artistName = artists[counter]
        artistLabel.text = artistName
        artistImage.image = UIImage(named: images[artistName] ?? "image" )

        counter = counter + 1
        numArtist += 1
        //number of artists until playlist is made can be changed
        if numArtist > 8 {
            makePlaylistButton.isHidden = false
        }
    }
    @IBAction func makePlaylist(_ sender: Any) {
        self.performSegue(withIdentifier: "playlistView", sender: self)
        
        
        
    }
    
}

