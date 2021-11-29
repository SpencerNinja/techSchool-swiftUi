//
//  CustomButton.swift
//  WeatherAppDemo
//
//  Created by Spencer Hurd on 11/29/21.
//

import SwiftUI

struct CustomButton: View {
    
    var title: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View {
        Text(title)
            .frame(width: 280, height: 50)
            .background(backgroundColor)
            .foregroundColor(textColor)
            .font(.system(size: 20, weight: .bold, design: .default))
            .cornerRadius(15)
    }
}
