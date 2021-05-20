import SwiftUI

struct EmojiPicker: View {
    var body: some View {
        let rows: [GridItem] = Array(repeating: .init(.fixed(10)), count: 1)
        ScrollView(.horizontal) {
            LazyHGrid(rows: rows, alignment: .top) {
                ForEach((0...79), id: \.self) {
                    let codepoint = $0 + 0x1f600

                    EmojiCell(codepoint: codepoint)
                }
            }
        }
    }
}
