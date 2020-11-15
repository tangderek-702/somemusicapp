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
    public let items: [SwipeSelectorModel] = [
        SwipeSelectorModel(title: "Drake", subtitle: ["Hotline Bling", "Headlines", "Toosie Slide", "God's Plan", "One Dance", "In My Feelings"], image: UIImage(named: "drake")),
        SwipeSelectorModel(title: "Rich Brian", subtitle: ["Love in my Pocket", "100 Degrees", "Midsummer Madness", "Yellow", "Sometimes", "When You Come Home"], image: UIImage(named: "richbrian")),
        SwipeSelectorModel(title: "Joji", subtitle: ["Slow Dancing in the Dark", "Daylight", "Tick Tock", "Ew", "Run"], image: UIImage(named: "joji")),
        SwipeSelectorModel(title: "Niki", subtitle: ["Indigo", "Nightcrawlers", "lowkey", "I Like U", "See U Never", "La La Lost You"], image: UIImage(named: "niki")),
        SwipeSelectorModel(title: "Lauv", subtitle: ["Modern Loneliness", "Love Like That", "Easy Love", "Tattoos Together", "Lonely Eyes", "Bracelet"], image: UIImage(named: "lauv.jpg")),
        SwipeSelectorModel(title: "Ariana Grande", subtitle: ["off the table (with The Weeknd)", "One Last Time", "shut up", "34 + 35", "just like magic", "my hair"], image: UIImage(named: "arianagrande.jpg")),
        SwipeSelectorModel(title: "Max", subtitle: ["Blueberry Eyes (feat. SUGA of BTS)", "Love Me Less (feat. Quinn XCII)", "Lights Down Low", "Take Over", "Checklist (feat. Chromeo)", "Satisfied"], image: UIImage(named: "max.jpg"))
        
    ]
    
    public let overflowItem: SwipeSelectorModel = SwipeSelectorModel(title: "Enjoy the Playlist ✌️", subtitle: ["Enjoy the playlist"], image: UIImage(named: "playlist"))
    
}
