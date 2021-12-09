//
//  ContentView.swift
//  Memorize
//
//  Created by Spencer Hurd on 12/6/21.
//

import SwiftUI

struct ContentView: View {
    @State var themeColor: Color = .red
    @State var emojis = ["🚲", "🚂", "🚁", "🚜", "🚕", "🏎", "🚑", "🚓", "🚒", "✈️", "🚀", "⛵️", "🛸", "🛶", "🚌", "🏍", "🛺", "🚠", "🛵", "🚗", "🚚", "🚇", "🛻", "🚝"]
    @State var emojiCount = 24
    
    var body: some View {
        VStack {
            Text("Memorize!")
                .font(.title)
                .foregroundColor(themeColor)
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 65))]) {
                    ForEach(emojis[0..<emojiCount].shuffled(), id: \.self) { emoji in
                        CardView(content: emoji)
                            .aspectRatio(2/3, contentMode: .fit)
                    }
                }
            }
            .foregroundColor(themeColor)
            Spacer()
            HStack {
                batman
                Spacer()
                tmnt
                Spacer()
                vehicles
//                remove
//                Spacer()
//                add
            }
            .font(.footnote)
            .padding(.horizontal)
        }
        .padding(.horizontal)
    }
    
    var batman: some View {
        Button {
            themeColor = .gray
            emojis = ["🦇", "🤡", "♦️", "🥶", "🐈‍⬛", "🐧", "🎭", "🥷🏼", "🌿", "💰", "🐦", "😱", "👊"]
            emojiCount = emojis.count
        } label: {
            VStack {
                Text("BATMAN")
                Image(systemName: "figure.walk")
            }
        }
    }
    var tmnt: some View {
        Button {
            themeColor = .green
            emojis = ["🐢", "🐀", "🍕", "🧪", "🥷🏼", "⚔️", "🚃", "🏒", "✦"]
            emojiCount = emojis.count
        } label: {
            VStack {
                Text("TMNT")
                Image(systemName: "tortoise.fill")
            }
        }
    }
    var vehicles: some View {
        Button {
            themeColor = .red
            emojis = ["🚲", "🚂", "🚁", "🚜", "🚕", "🏎", "🚑", "🚓", "🚒", "✈️", "🚀", "⛵️", "🛸", "🛶", "🚌", "🏍", "🛺", "🚠", "🛵", "🚗", "🚚", "🚇", "🛻", "🚝"]
            emojiCount = emojis.count
        } label: {
            VStack {
                Text("VEHICLES")
                Image(systemName: "car.fill")
            }
        }
    }
    
//    var remove: some View {
//        Button {
//            if emojiCount > 1 {
//                emojiCount -= 1
//            }
//        } label: {
//            Image(systemName: "minus.circle")
//        }
//    }
//    var add: some View {
//        Button {
//            if emojiCount < emojis.count {
//                emojiCount += 1
//            }
//        } label: {
//            Image(systemName: "plus.circle")
//        }
//    }
}

struct CardView: View {
    var content: String
    @State var isFaceUp: Bool = true
    
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20)
            if isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 3)
                Text(content).font(.largeTitle)
            } else {
                shape.fill()
            }
        }
        .onTapGesture {
            isFaceUp = !isFaceUp
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
//        ContentView()
//            .preferredColorScheme(.light)
    }
}
