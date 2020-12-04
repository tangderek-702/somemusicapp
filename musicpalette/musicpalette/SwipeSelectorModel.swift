//
//  SwipeSelectorModel.swift
//  SwipeSelectorKit
//
//  Created by Alex Takahashi on 10/12/20.
//

import UIKit

public struct SwipeSelectorModel {
    let title: String!
    let subtitle: [String]
    let genre: String
    var image: UIImage?
    let bio: String!
    
    init(title: String, subtitle: [String], image: UIImage?, genre: String, bio:String) {
        self.title = title
        self.subtitle = subtitle
        self.image = image
        self.genre = genre
        self.bio =  bio
    }
}
