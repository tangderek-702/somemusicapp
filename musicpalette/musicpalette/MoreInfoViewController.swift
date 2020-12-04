//
//  MoreInfoViewController.swift
//  musicpalette
//
//  Created by User on 12/3/20.
//  Copyright © 2020 musicpalette. All rights reserved.
//

import Foundation
import UIKit

class MoreInfoViewController:UIViewController {
    @IBOutlet weak var moreInfoName: UILabel!
    @IBOutlet weak var moreInfoPic: UIImageView!
    @IBOutlet weak var moreInfoBio: UILabel!
    var currModel: SwipeSelectorModel? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        moreInfoName.text = currModel?.title
        moreInfoPic.image = currModel?.image
        moreInfoBio.text = currModel?.bio
    }
}
