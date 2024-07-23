import SwiftUI
import Foundation

struct DistanceConversionView: View {
    @Environment(\.locale) var locale
    @State private var meters: Double = 1000
    
    var kilometers: Double {
        meters / 1000
    }
    
    var miles: Double {
        meters * 0.000621371
    }
    
    var body: some View {
        VStack {
            TextField("Enter meters", value: $meters, formatter: NumberFormatter())
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Text("Kilometers: \(kilometers, specifier: "%.2f")")
                .padding()
            
            Text("Miles: \(miles, specifier: "%.2f")")
                .padding()
        }
    }
}
