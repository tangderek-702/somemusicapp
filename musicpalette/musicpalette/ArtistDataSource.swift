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
        ArtistModel(name: "Niki", image: UIImage(named: "niki.jpg"), songs: ["Indigo", "Nightcrawlers", "lowkey", "I Like U", "See U Never", "La La Lost You"])
    ]
    
}
