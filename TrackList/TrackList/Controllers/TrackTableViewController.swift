//
//  TrackTableViewController.swift
//  TrackList
//
//  Created by deniss.lobacs on 16/11/2021.
//

import UIKit

class TrackTableViewController: UITableViewController {

//    var trackList = [
//            "Carly Rae Japsen - Dedicated",
//            "Dj Khaled - father of",
//            "Injury Reserve - Jailbrake",
//            "Jonas Brothers - Happiness Begins ",
//            "Joyner Lucas - adhd",
//            "Maluma - 11-11",
//            "Never Young - LOSER",
//            "Rammstein - rammstein",
//            "Skepta - Ignorance Is Bliss",
//            "Skillet - Victory",
//            "Tylor the Creator - IGOR",
//            "YG - Stop Snitching",
//        ]
    var songs = Song.createSong()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return songs.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "trackListCell", for: indexPath)
        
        let song = songs[indexPath.row]
        cell.textLabel?.text = song.track
        cell.detailTextLabel?.text = song.album
        cell.imageView?.image = UIImage(named: song.cover)
        
        // Configure the cell...

        return cell
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            print("indexPath: ", indexPath)
        
        // Get the new view controller using segue.destination.
        let detailVC = segue.destination as! DetailViewController
        // Pass the selected object to the new view controller.
        detailVC.song = songs[indexPath.row]
    }
    }

}
