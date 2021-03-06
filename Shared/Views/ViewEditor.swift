// MARK: - View: Editor View for macOS and iOS

/// The text editor. SwiftUI does not give too many options for it.

import SwiftUI

struct ViewEditor: View {
    
    @Binding var document: GChordDocument
    
    var body: some View {
        TextEditor(text: $document.text)
            .font(.custom("HelveticaNeue", size: 18))
            .lineSpacing(5)
            .padding()
    }
}
