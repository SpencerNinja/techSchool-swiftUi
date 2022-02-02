//
//  ContentView.swift
//  ChallengeFeb2
//
//  Created by Spencer Hurd on 2/2/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            VStack(spacing: 0) {
                
                HStack(alignment: .center, spacing: 0) {
                    movieImage()
                    movieShape()
                }
                
                HStack(alignment: .center, spacing: 0) {
                    movieLogo()
                    movieTitle()
                }
                
            }
            .ignoresSafeArea()
        
        }
        
    }
    
    struct QuadrantFrame: ViewModifier {
        func body(content: Content) -> some View {
            content
                .frame(
                    width: UIScreen.main.bounds.width / 2,
                    height: UIScreen.main.bounds.height / 2
                )
                .border(Color.white, width: 3)
        }
    }

    // 1st Quadrant
    struct movieImage: View {
        var body: some View {
            Image("WhatAboutBob")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .modifier(QuadrantFrame())
                .clipped()
        }
    }

    // 2nd Quadrant
    struct movieShape: View {
        var body: some View {
            Circle()
                .foregroundColor(Color.green)
                .padding()
                .shadow(color: Color.gray, radius: 10, x: 3, y: 3)
                .modifier(QuadrantFrame())
        }
    }

    // 3rd Quadrant
    struct movieLogo: View {
        var body: some View {
            Image(systemName: "brain.head.profile")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .symbolRenderingMode(.palette)
                .foregroundStyle(.blue, .yellow)
                .padding()
                .modifier(QuadrantFrame())
        }
    }

    // 4th Quadrant
    struct movieTitle: View {
        var body: some View {
            VStack {
                Text("What About Bob?")
                    .font(.headline)
                    .foregroundColor(.blue)
                Text("starring Bill Murray")
                    .font(.caption)
                    .foregroundColor(.yellow)
                HStack {
                    Circle()
                        .foregroundColor(.orange)
                        .frame(width: 20, height: 20)
                    RoundedRectangle(cornerRadius: 5)
                        .foregroundColor(.red)
                        .frame(width: 40, height: 20)
                }
            }
            .modifier(QuadrantFrame())
        }
    }

}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
.previewInterfaceOrientation(.portrait)
    }
}
