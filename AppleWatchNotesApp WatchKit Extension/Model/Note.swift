//
//  Note.swift
//  AppleWatchNotesApp WatchKit Extension
//
//  Created by Ramill Ibragimov on 18.06.2021.
//

import Foundation

struct Note: Identifiable, Codable {
    let id: UUID
    let text: String
}
