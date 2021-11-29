//
//  ContentView.swift
//  Demo
//
//  Created by Spencer Hurd on 11/23/21.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ZStack {
            TestView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
            .previewDevice("iPhone 13 mini")
    }
}

struct TestView: View {
    
    var myList: [String] = ["hello", "swift", "ui"]
    
    var body: some View {
        
//        VStack {
//            Text("Hello world")
//                .padding()
//            Circle()
//                .fill(Color.red)
//                .frame(width: 50, height: 50)
//                .shadow(color: .purple, radius: 10, x: 0, y: 10)
//            Button("Choose Me") {
//                print("button tapped!")
//            }
//        }
        
//        ZStack {
//            Rectangle()
//                .foregroundColor(.indigo)
//                .frame(maxWidth: .infinity)
//                .frame(height: 80)
//                .cornerRadius(20)
//                .shadow(color: .purple, radius: 10, x: 10, y: -10)
//                .padding(.horizontal)
//            Text("My cool button")
//                .foregroundColor(.white)
//                .font(.title2)
//        }
        
//        ZStack {
//            VStack {
//                ZStack {
//                    Circle()
//                        .fill(.green)
//                    Image(systemName: "questionmark")
//                        .resizable()
//                        .scaledToFit()
//                        .padding()
//                }
//                ZStack {
//                    HStack {
//                        Group {
//                            Rectangle()
//                            Rectangle()
//                        }.foregroundColor(.purple)
//                    }
//                }
//                Capsule()
//                    .fill(.blue)
//            }
//        }
        
        List(myList, id: \.self) { item in
            Text(item)
        }
        
    }
}
