//
//  ContentView.swift
//  Memorize
//
//  Created by Spencer Hurd on 12/6/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .stroke(lineWidth: 3)
            Text("Hello, world!")
                .foregroundColor(.orange)
        }
        .padding(.horizontal)
        .foregroundColor(/*@START_MENU_TOKEN@*/.red/*@END_MENU_TOKEN@*/)
    }
}





















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
