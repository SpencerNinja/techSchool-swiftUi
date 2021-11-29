//
//  ContentView.swift
//  WeatherAppDemo
//
//  Created by Spencer Hurd on 11/29/21.
//

import SwiftUI

struct WeatherAppDemoView: View {
    
    @State private var isNight: Bool = false
    
    var body: some View {
        
        ZStack {
            
            MainBackgroundView(isNight: $isNight)
            
            VStack {

                // City Name
                Text("St. George")
                    .foregroundColor(.white)
                    .font(.system(size: 28))
                    .padding(.top)
                // Today's weather icon
                mainImage
                // Temperature
                Text("64°")
                    .foregroundColor(.white)
                    .font(.system(size: 90))
                    .padding(.bottom)
                
                // MARK: Days of the week
                HStack(spacing: 15) {
                    WeatherDayView(dayOfWeek: "Mon", imageName: "cloud.sun.fill", temperature: "45")
                    WeatherDayView(dayOfWeek: "Tue", imageName: "sun.dust.fill", temperature: "60")
                    WeatherDayView(dayOfWeek: "Wed", imageName: "cloud.drizzle.fill", temperature: "35")
                    WeatherDayView(dayOfWeek: "Thu", imageName: "sun.max.fill", temperature: "72")
                    WeatherDayView(dayOfWeek: "Fri", imageName: "snowflake", temperature: "-5")
                }
                
                Spacer()
                Button {
                    isNight.toggle()
                } label: {
                    CustomButton(title: "Change Theme", textColor: .blue, backgroundColor: .white)
                }
                Spacer()
                
            }
        }
    }
    
}

extension WeatherAppDemoView {
    
    var mainImage: some View {
        Image(systemName: isNight == false ? "cloud.sun.fill" : "cloud.moon.fill")
            .renderingMode(.original)
            .resizable()
            .scaledToFit()
            .frame(width: 120, height: 120)
            .padding(-20)
    }
    
    struct MainBackgroundView: View {
        @Binding var isNight: Bool
        var body: some View {
            LinearGradient(colors: [isNight == false ? .blue : .black, isNight == false ? Color("lightBlue") : .gray], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
        }
    }
    
    struct WeatherDayView: View {
        
        var dayOfWeek: String
        var imageName: String
        var temperature: String
        
        var body: some View {
            VStack {
                Text(dayOfWeek)
                    .font(.system(size: 20, weight: .medium))
                Image(systemName: imageName)
                    .renderingMode(.original)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                Text("\(temperature)°")
            }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherAppDemoView()
            .preferredColorScheme(.dark)
    }
}
