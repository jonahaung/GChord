// MARK: - View: Main View for iOS

/// The content of the whole application.

import SwiftUI

struct ViewContent: View {
    
    @Binding var document: GChordDocument
    @State var song = Song()
    let file: URL?
    
    @AppStorage("showEditor") var showEditor: Bool = false
    @AppStorage("showChords") var showChords: Bool = true
    @Environment(\.horizontalSizeClass) var sizeClass

    var body: some View {
        VStack(spacing: 0) {
            ViewHeader(song: song)
            HStack {
                ViewSong(song: song, file: file)
                if showEditor {
                    ViewEditor(document: $document)
                }
            }
            HStack {
                Button {
                    withAnimation {
                        showChords.toggle()
                    }
                }
                label: {
                    HStack {
                        Image(systemName: showChords ? "number.square.fill" : "number.square")
                    }
                }
                Button {
                    withAnimation {
                        showEditor.toggle()
                    }
                }
                label: {
                    Image(systemName: showEditor ? "pencil.circle.fill" : "pencil.circle")
                }
            }
        }
        .modifier(ViewSongModifier(document: $document, song: $song, file: file))
    }
}
