//
//  ViewController.swift
//  SwipeSelectorKit
//
//  Created by Alex Takahashi on 10/11/20.
//

import UIKit
import AVFoundation

class SwipeSelectorViewController: UIViewController, SwipeSelectorDelegate {
    var audioPlayer = AVAudioPlayer()
    let dataSource = SwipeSelectorViewControllerDataSource()
    var rightSwipes: [SwipeSelectorModel] = []
    var leftSwipes: [SwipeSelectorModel] = []
    var swipeSelectorView = SwipeSelectorView()
    
    // MARK: View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        swipeSelectorView = SwipeSelectorView(delegate: self)
        self.view.addSubview(swipeSelectorView)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        swipeSelectorView.frame = self.view.frame
    }
    
    // MARK: SwipeSelectorDelegate
    
    func swipeSelectorViewNumberOfItems(_ swipeSelectorView: SwipeSelectorView) -> Int {
        return dataSource.items.count
    }
    
    func swipeSelectorViewDidSwipe(_ swipeSelectorView: SwipeSelectorView, itemAtIndex: Int, isRightSwipe: Bool) {
        let currItem = dataSource.items[itemAtIndex % dataSource.items.count]
        if (isRightSwipe) {
            if (currItem.title != "palette \n playlists made for you") {
                rightSwipes.append(currItem)
            }
            print("✅ Right Swipes \(rightSwipes)")
        } else {
            leftSwipes.append(currItem)
            print("🛑 Left Swipes \(leftSwipes)")
        }
        if (currItem.title != "palette \n playlists made for you") {
            let sound = Bundle.main.path(forResource: currItem.sound, ofType: "wav", inDirectory: "sounds")
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
                audioPlayer.play()
            }
            catch {
                print("sound error")
            }
        }
    }
    
    func swipeSelectorView(_ swipeSelectorView: SwipeSelectorView, itemForRowAtIndex: Int) -> SwipeSelectorModel {
        return dataSource.items[itemForRowAtIndex % dataSource.items.count];
    }
    
    func swipeSelectorViewItemForOverflow(_ swipeSelectorView: SwipeSelectorView) -> SwipeSelectorModel {
        return dataSource.overflowItem
    }
    
    func swipeSelectorViewDidTap(_ swipeSelectorView: SwipeSelectorView, itemAtIndex: Int) {
        if (itemAtIndex < dataSource.items.count) {
            // TODO: Add Detail View Controller per item
            let playlistViewController:UIViewController = UIViewController()
            playlistViewController.view.backgroundColor = UIColor.green
            self.present(playlistViewController, animated: true, completion: nil)
            
        } else {
            // TODO: Add Playlist View Controller at the overflow item
            let pc:PlaylistTableViewController = PlaylistTableViewController(swipeModels: rightSwipes)
            self.present(pc, animated: true, completion: nil)
        }
    }

}

