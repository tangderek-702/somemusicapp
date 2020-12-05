//
//  SwipeSelectorViewControllerDataSource.swift
//  SwipeSelectorKit
//
//  Created by Alex Takahashi on 10/15/20.
//

import Foundation
import UIKit

public struct SwipeSelectorViewControllerDataSource {
    //our datasource
    public let items: [SwipeSelectorModel] =
        [SwipeSelectorModel(title: "palette \n playlists made for you", subtitle: [""], image: UIImage(named: "palette"), genre: "swipe to continue!", sound: "drake", soundTitle: ""),
         SwipeSelectorModel(title: "Drake", subtitle: ["Hotline Bling", "Headlines", "Toosie Slide", "God's Plan", "One Dance", "In My Feelings"], image: UIImage(named: "drake"), genre: "Rap", sound: "richbrian", soundTitle: "Now Playing: God's Plan - Drake"),
         SwipeSelectorModel(title: "Rich Brian", subtitle: ["Love in my Pocket", "100 Degrees", "Midsummer Madness", "Yellow", "Sometimes", "When You Come Home"], image: UIImage(named: "richbrian"), genre: "Alternative Rap", sound: "joji", soundTitle: "Now Playing: Glow Like That - Rich Brian"),
         SwipeSelectorModel(title: "Joji", subtitle: ["Slow Dancing in the Dark", "Daylight", "Tick Tock", "Ew", "Run"], image: UIImage(named: "joji"), genre: "Alternative R&B", sound: "niki", soundTitle: "Now Playing: Slow Dancing in the Dark - Joji"),
         SwipeSelectorModel(title: "Niki", subtitle: ["Indigo", "Nightcrawlers", "lowkey", "I Like U", "See U Never", "La La Lost You"], image: UIImage(named: "niki"), genre: "R&B", sound: "lauv", soundTitle: "Now Playing: I Like U - NIKI"),
         SwipeSelectorModel(title: "Lauv", subtitle: ["Modern Loneliness", "Love Like That", "Easy Love", "Tattoos Together", "Lonely Eyes", "Bracelet"], image: UIImage(named: "lauv.jpg"), genre: "Bedroom Pop", sound: "ari", soundTitle: "Now Playing: I Like Me Better - LAUV"),
         SwipeSelectorModel(title: "Ariana Grande", subtitle: ["off the table (with The Weeknd)", "One Last Time", "shut up", "34 + 35", "just like magic", "my hair"], image: UIImage(named: "arianagrande.jpg"), genre: "Pop", sound: "max", soundTitle: "Now Playing: thank u, next - Ariana Grande"),
         SwipeSelectorModel(title: "Max", subtitle: ["Blueberry Eyes (feat. SUGA of BTS)", "Love Me Less (feat. Quinn XCII)", "Lights Down Low", "Take Over", "Checklist (feat. Chromeo)", "Satisfied"], image: UIImage(named: "max.jpg"), genre: "Pop", sound: "", soundTitle: "Now Playing: Love Me Less (feat. Quinn XCII) - MAX")
        
    ]
    
    public let overflowItem: SwipeSelectorModel = SwipeSelectorModel(title: "Enjoy the Playlist ✌️", subtitle: ["Enjoy the playlist"], image: UIImage(named: "playlist"), genre: "your music taste is 👌", sound: "", soundTitle: "")
    
}
