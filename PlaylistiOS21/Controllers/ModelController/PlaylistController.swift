//
//  PlaylistController.swift
//  PlaylistiOS21
//
//  Created by Edmund Bollenbacher on 8/29/18.
//  Copyright © 2018 Edmund Bollenbacher. All rights reserved.
//

// 1) CRUD
// 2) Singleton
// 3) SOURCE OF TRUTH!!!

import Foundation

class PlaylistController {
    

    // Singelton: Prevents two instances to reach your variables and methods. It creates ONLY ONE instance to give you access to it's instance methdos and variables
    static let shared = PlaylistController()
    
    // SOURCE OF TRUTH!!!!
    var playlists: [Playlist] = []
    
    // Create
    /// This creates a brand new playlist - and adds it to our SOURCE OF TRUTH!
    func create(title: String) {
        // line 28 is an instance of playlist.
        let playlist = Playlist(title: title)
        playlists.append(playlist)
    }
    
    // Delete
    func delete(playlistToDelete: Playlist) {
      
        guard let index = playlists.index(of: playlistToDelete) else { return }
        playlists.remove(at: index)
    }
}








