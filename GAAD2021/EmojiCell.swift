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
        .accessibilityElement(children: .ignore)
        .accessibility(label: Text("\(emoji) emoji, code point: \(codepointString).                                     "))
        .accessibility(hint: Text("double tap to select"))
        .accessibility(addTraits: isSelected ? [.isSelected] : [])
        .padding(4)
        .background(isSelected ? Color.accentColor : Color.clear)
        .onTapGesture {
            isSelected.toggle()
        }
    }
}
