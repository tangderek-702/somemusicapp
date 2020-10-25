//
//  Artists.swift
//  musicpalette
//
//  Created by Alex Takahashi on 10/25/20.
//  Copyright © 2020 musicpalette. All rights reserved.
//

import Foundation
import UIKit

struct ArtistModel {
    
    let name: String
    let image: UIImage?
    let songs: [String]
    
    init(name: String, image: UIImage?, songs: [String]) {
        self.name = name;
        self.image = image;
        self.songs = songs;
    }
}
