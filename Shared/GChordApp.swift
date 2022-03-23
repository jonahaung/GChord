//
//  GChordApp.swift
//  Shared
//
//  Created by Aung Ko Min on 23/3/22.
//

import SwiftUI

@main
struct GChordApp: App {
    var body: some Scene {
        DocumentGroup(newDocument: GChordDocument()) { file in
            ContentView(document: file.$document)
        }
    }
}
