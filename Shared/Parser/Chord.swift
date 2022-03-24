// MARK: - struct: the chords in the song

import Foundation
import SwiftyChords

public struct Chord: Identifiable {
    public var id = UUID()
    public var name: String
    public var key: Chords.Key
    public var suffix: Chords.Suffix
    public var define: String
    public var basefret: Int {
        return Int(define.prefix(1)) ?? 1
    }
}
