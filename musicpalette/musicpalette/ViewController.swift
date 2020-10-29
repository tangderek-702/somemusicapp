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
        var currArtist = dataSource.artists[0]
        for artist in dataSource.artists {
            if artist.name == artistLabel.text {
                currArtist = artist
            }
        }
        
        if counter == dataSource.artists.count {
            counter = 0
        }
        yay.append(artistLabel.text!)
        
    
        var artistSongs = currArtist.songs
        
        var addSong = (artistSongs.randomElement()!)
        while playlist.contains(addSong) {
            addSong = (artistSongs.randomElement()!)
        }
        playlist.append(addSong)
        
    
        var nextArtist = dataSource.artists[counter]
        artistLabel.text = nextArtist.name
        artistImage.image =  nextArtist.image
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
            yayButton.isHidden = true
            nayButton.isHidden = true
        }
    }
    @IBAction func nayButtonClicked(_ sender: Any) {
        if counter == dataSource.artists.count {
            counter = 0
        }
        var nextArtist = dataSource.artists[counter]
        artistLabel.text = nextArtist.name
        artistImage.image =  nextArtist.image
        counter = counter + 1
        
        numArtist += 1
        //number of artists until playlist is made can be changed
        if numArtist > 8 {
            makePlaylistButton.isHidden = false
            yayButton.isHidden = true
            nayButton.isHidden = true
            
        }
    }
    @IBAction func makePlaylist(_ sender: Any) {
        self.performSegue(withIdentifier: "playlistView", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any? ) {
        let vc: PlaylistViewController = segue.destination as! PlaylistViewController
        vc.playlist = playlist.joined(separator: ", ")
    }
    
}

