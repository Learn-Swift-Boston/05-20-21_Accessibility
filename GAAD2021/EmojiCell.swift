import SwiftUI

struct EmojiCell: View {
    @State var isSelected = false
    let codepoint: Int

    var body: some View {
        let codepointString = String(format: "%02X", codepoint)
        let emoji = String(Character(UnicodeScalar(codepoint)!))

        VStack() {
            Text("\(emoji)")
                .font(.largeTitle)
            Text("\(codepointString)")
                .font(.footnote)
        }
        .padding(4)
        .background(isSelected ? Color.accentColor : Color.clear)
        .onTapGesture {
            isSelected.toggle()
        }
    }
}
