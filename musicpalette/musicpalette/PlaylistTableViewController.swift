//
//  PlaylistTableViewController.swift
//  musicpalette
//
//  Created by Lilly Liu and Jennifer Yang on 11/4/20.
//  Copyright © 2020 musicpalette. All rights reserved.
//

import UIKit


class PlaylistTableViewController: UITableViewController {
    
    var swipeModels: [SwipeSelectorModel] = []

    @IBOutlet weak var playlistTableViewOutlet: UITableView! //TODO: check again

    init(swipeModels: [SwipeSelectorModel]) {
        self.swipeModels = swipeModels
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    //MARK: UITableViewDataSource

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }

    // Provide a cell object for each row.
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //TODO: Add Custom TableViewCell to display the cell

        let cell = tableView.dequeueReusableCell(withIdentifier: "Playlist Table View Cell", for: indexPath) as! PlaylistTableViewCell
        
        cell.ArtistImage.image = swipeModels[0].image
        cell.ArtistName.text = swipeModels[0].title
//        cell.ArtistSongs.text = swipeModels[0].subtitle

        return cell
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        //self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")

        self.tableView.register(UINib(nibName: "PlaylistTableViewCell", bundle: nil), forCellReuseIdentifier: "Playlist Table View Cell")

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 4 //changed from 0 to 4 for now
    }

}
