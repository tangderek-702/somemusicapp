//
//  SwipeSelectorViewControllerDataSource.swift
//  SwipeSelectorKit
//
//  Created by Alex Takahashi on 10/15/20.
//

import Foundation
import UIKit

public struct SwipeSelectorViewControllerDataSource {
    
    public let items: [SwipeSelectorModel] = [
        SwipeSelectorModel(title: "Drake", subtitle: "God's Plan", image: UIImage(named: "drake")),
        SwipeSelectorModel(title: "Rich Brian", subtitle: "Love in my Pocket", image: UIImage(named: "richbrian")),
        SwipeSelectorModel(title: "Joji", subtitle: "Slow Dancing in the Dark", image: UIImage(named: "joji")),
        SwipeSelectorModel(title: "Niki", subtitle: "Indigo", image: UIImage(named: "niki")),
        SwipeSelectorModel(title: "Drake", subtitle: "Headlines", image: UIImage(named: "drake")),
        SwipeSelectorModel(title: "Rich Brian", subtitle: "Midsummer Madness", image: UIImage(named: "richbrian")),
        SwipeSelectorModel(title: "Joji", subtitle: "Daylight", image: UIImage(named: "joji")),
        SwipeSelectorModel(title: "Niki", subtitle: "Nightcrawlers", image: UIImage(named: "niki")),
        
    ]
    
    public let overflowItem: SwipeSelectorModel = SwipeSelectorModel(title: "Thanks ✌️", subtitle: "Enjoy the playlist", image: UIImage(named: "playlist"))
    
}
