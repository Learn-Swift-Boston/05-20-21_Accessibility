//
//  ContentView.swift
//  GAAD2021
//
//  Created by Matt Dias on 5/20/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

        NavigationView {
            VStack(alignment: .leading) {
                Text("Pick Your Favorite Emoji").bold()
                EmojiPicker()

            }.padding(8)
            .navigationTitle("Emoji Picker")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
