//
//  ContentView.swift
//  Shared
//
//  Created by Aung Ko Min on 23/3/22.
//

import SwiftUI

struct ContentView: View {
    @Binding var document: GChordDocument

    var body: some View {
        TextEditor(text: $document.text)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(document: .constant(GChordDocument()))
    }
}
