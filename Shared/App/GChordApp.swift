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
#if os(macOS)
        DocumentGroup(newDocument: GChordDocument()) { file in
            NavigationView {
                ViewSidebar(document: file.$document, file: file.fileURL)
                ViewContent(document: file.$document, file: file.fileURL)
            }
        }
        .commands {
            /// Show or hide the sidebar
            SidebarCommands()
        }
#endif
#if os(iOS)
        DocumentGroup(newDocument: GChordDocument()) { file in
            ViewContent(document: file.$document, file: file.fileURL ?? nil)
        }
#endif
    }
}
