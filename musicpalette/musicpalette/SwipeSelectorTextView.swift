//
//  SwipeSelectorTextView.swift
//  SwipeSelectorKit
//
//  Created by Alex Takahashi on 10/15/20.
//

import Foundation
import UIKit
// changed font
let titleFont = UIFont(name: "HiraginoSans-W3", size: UIFont.systemFontSize * 2)!
let subtitleFont = UIFont(name: "HiraginoSans-W6", size: UIFont.systemFontSize * 2)!
let genreFont = UIFont(name: "HiraginoSans-W3", size: UIFont.systemFontSize * 1.5)!
let soundFont = UIFont(name: "HiraginoSans-W3", size: UIFont.systemFontSize * 1)!

class BaseTextView: UITextView {
    
    override init(frame: CGRect, textContainer: NSTextContainer?) {
        super.init(frame: frame, textContainer: textContainer)
        self.textAlignment = .left
        self.textContainer.maximumNumberOfLines = 1
        self.textContainerInset = UIEdgeInsets(top: 0, left: self.layoutMargins.left, bottom: 0, right: self.layoutMargins.right)
        self.isScrollEnabled = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
 
class TitleTextView: BaseTextView {
    
    override init(frame: CGRect, textContainer: NSTextContainer?) {
        super.init(frame: frame, textContainer: textContainer)
        self.font = titleFont
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class SubtitleTextView: BaseTextView {
    
    override init(frame: CGRect, textContainer: NSTextContainer?) {
        super.init(frame: frame, textContainer: textContainer)
        self.font = subtitleFont
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class GenreTextView: BaseTextView {
    
    override init(frame: CGRect, textContainer: NSTextContainer?) {
        super.init(frame: frame, textContainer: textContainer)
        self.font = genreFont
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class SoundTextView: BaseTextView {
    
    override init(frame: CGRect, textContainer: NSTextContainer?) {
        super.init(frame: frame, textContainer: textContainer)
        self.font = soundFont
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
