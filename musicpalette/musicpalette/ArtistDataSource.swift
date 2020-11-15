//
//  ArtistDataSource.swift
//  musicpalette
//
//  Created by Alex Takahashi on 10/25/20.
//  Copyright © 2020 musicpalette. All rights reserved.
//

import Foundation
import UIKit

struct ArtistDataSource {
    
    let artists: [ArtistModel] = [
        ArtistModel(name: "Joji", image: UIImage(named: "joji.jpg"), songs: ["Slow Dancing in the Dark", "Daylight", "Tick Tock", "Ew", "Run"]),
        ArtistModel(name: "Rich Brian", image: UIImage(named: "richbrian.jpg"), songs: ["Love in my Pocket", "100 Degrees", "Midsummer Madness", "Yellow", "Sometimes", "When You Come Home"]),
        ArtistModel(name: "Drake", image: UIImage(named: "drake.jpg"), songs: ["Hotline Bling", "Headlines", "Toosie Slide", "God's Plan", "One Dance", "In My Feelings"]),
        ArtistModel(name: "Niki", image: UIImage(named: "niki.jpg"), songs: ["Indigo", "Nightcrawlers", "lowkey", "I Like U", "See U Never", "La La Lost You"]),
        ArtistModel(name: "Lauv", image: UIImage(named: "lauv.jpg"), songs: ["Modern Loneliness", "Love Like That", "Easy Love", "Tattoos Together", "Lonely Eyes", "Bracelet"]),
        ArtistModel(name: "Ariana Grande", image: UIImage(named: "arianagrande.jpg"), songs: ["off the table (with The Weeknd)", "One Last Time", "shut up", "34 + 35", "just like magic", "my hair"]),
        ArtistModel(name: "Max", image: UIImage(named: "max.jpg"), songs: ["Blueberry Eyes (feat. SUGA of BTS)", "Love Me Less (feat. Quinn XCII)", "Lights Down Low", "Take Over", "Checklist (feat. Chromeo)", "Satisfied"])
    ]
    
}
