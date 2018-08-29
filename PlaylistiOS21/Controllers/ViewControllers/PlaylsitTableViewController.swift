//
//  PlaylsitTableViewController.swift
//  PlaylistiOS21
//
//  Created by Edmund Bollenbacher on 8/29/18.
//  Copyright © 2018 Edmund Bollenbacher. All rights reserved.
//

import UIKit

class PlaylsitTableViewController: UITableViewController {

    @IBOutlet weak var playlistTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func addPlaylistButtonTapped(_ sender: Any) {
        
        guard let title = playlistTextField.text, title != "" else { return }
        PlaylistController.shared.create(title: title)
        
        // Hey tableView go do your job again. - Re-Run your 2 required methods. Number of rows in section and cell for row at.
        tableView.reloadData()
        playlistTextField.text = ""
    }
    
    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return PlaylistController.shared.playlists.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "playlistCell", for: indexPath)

        let playlist = PlaylistController.shared.playlists[indexPath.row]
        
        cell.textLabel?.text = playlist.title

        return cell
    }


    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            
            let playlist = PlaylistController.shared.playlists[indexPath.row]
            
            PlaylistController.shared.delete(playlistToDelete: playlist)
            
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }

}
