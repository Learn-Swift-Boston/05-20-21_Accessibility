//
//  ContentView.swift
//  GAAD2021
//
//  Created by Matt Dias on 5/20/21.
//

import SwiftUI

struct ContentView: View {
    @State var isTrue = false
    @State var size: Double = 0.0
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    @State var progress = 0.0
    var body: some View {

        NavigationView {
            VStack(alignment: .leading) {
                Button("Hey Chat!") {

                }
                ProgressView("Progress", value: progress, total: 10)
                Toggle("I love this app!", isOn: $isTrue)
                Slider(value: $size, in: 0...10) {
                    Text("size")
                }
                Text("Pick Your Favorite Emoji").bold()
                EmojiPicker()//.frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)

            }.padding(8)
            .navigationTitle("Emoji Picker")
        }
//        .onReceive(timer) { _ in
//            if progress < 10 {
//                progress += 1
//            } else {
//                progress = 0
//                UIAccessibility.post(notification: .announcement, argument: "download finished!")
//            }
//        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
