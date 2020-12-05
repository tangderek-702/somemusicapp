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
    let sound: String
    var image: UIImage?
    let bio: String!
    let soundTitle: String
    init(title: String, subtitle: [String], image: UIImage?, genre: String, sound: String, soundTitle: String, bio:String) {
        self.title = title
        self.subtitle = subtitle
        self.image = image
        self.genre = genre
        self.sound = sound
        self.soundTitle = soundTitle
        self.bio =  bio
    }
}
