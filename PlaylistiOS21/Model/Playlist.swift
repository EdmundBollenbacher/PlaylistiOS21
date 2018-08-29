//
//  Playlist.swift
//  PlaylistiOS21
//
//  Created by Edmund Bollenbacher on 8/29/18.
//  Copyright © 2018 Edmund Bollenbacher. All rights reserved.
//

import Foundation

class Playlist: Equatable {
    // now we can compair playlist and have access to helper methods 
    static func == (lhs: Playlist, rhs: Playlist) -> Bool {
        if lhs.title != rhs.title { return false }
        if rhs.songs != rhs.songs { return false }
        return true
    }
    
    
    var title: String
    var songs: [Song] = []
    
    init(title: String, songs: [Song] = []) {
        self.title = title
        self.songs = songs
    }
}

