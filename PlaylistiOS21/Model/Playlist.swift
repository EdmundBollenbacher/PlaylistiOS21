//
//  Playlist.swift
//  PlaylistiOS21
//
//  Created by Edmund Bollenbacher on 8/29/18.
//  Copyright © 2018 Edmund Bollenbacher. All rights reserved.
//

import Foundation

class Playlist {
    
    var title: String
    var songs: [Song] = []
    
    init(title: String, songs: [Song] = []) {
        self.title = title
        self.songs = songs
    }
}
