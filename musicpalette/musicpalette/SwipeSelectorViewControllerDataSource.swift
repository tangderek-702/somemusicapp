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
        
    ]
    
    public let overflowItem: SwipeSelectorModel = SwipeSelectorModel(title: "Enjoy the Playlist ✌️", subtitle: ["Enjoy the playlist"], image: UIImage(named: "playlist"))
    
}
