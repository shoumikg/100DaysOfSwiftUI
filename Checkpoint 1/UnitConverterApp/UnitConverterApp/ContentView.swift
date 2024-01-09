//
//  ContentView.swift
//  UnitConverterApp
//
//  Created by Shoumik on 09/01/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var fahrenheitValue = (32.5)
    var celciusValue: Double {
        return (fahrenheitValue - 32) * (5/9)
    }
    
    var body: some View {
        VStack (alignment: .leading,
                spacing: 30) {
            Text("Temperature")
            HStack (spacing: 20) {
                UnitView(value: fahrenheitValue, title: "Fahrenheit")
                Text("=")
                UnitView(value: celciusValue, title: "Celcius")
            }
            HStack (spacing: 20) {
                Text("Formula")
                    .padding(5)
                    .background(Color.yellow)
                Text(String(format: "(%.2f°F − 32) × 5/9 = %.2f°C",
                            fahrenheitValue,
                            celciusValue))
            }
            .font(.subheadline)
            Spacer()
        }
        .frame(width: 350,
               height: 300,
               alignment: .leading)
        .font(.title)
        .scaledToFill()
    }
    
    struct UnitView: View {
        var value: Double
        var title: String
        
        var body: some View {
            VStack {
                Text(String(format: "%.2f",
                            value))
                    .font(.title2)
                Text(title)
                    .font(.title3)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
