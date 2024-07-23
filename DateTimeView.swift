import SwiftUI

struct DateTimeView: View {
    @Environment(\.locale) var locale
    
    var body: some View {
        VStack {
            Text(Date(), style: .time)
                .padding()
            
            Text(Date().formatted(date: .long, time: .shortened))
                .padding()
            
            Text(Date().formatted(date: .complete, time: .complete))
                .padding()
        }
    }
}
