import SwiftUI

class LocaleSettings: ObservableObject {
    @Published var locale: Locale = .current
    
    func setLocale(_ identifier: String) {
        locale = Locale(identifier: identifier)
    }
}

struct ContentView: View {
    @StateObject private var localeSettings = LocaleSettings()
    @State private var currentLanguage = "en"
    
    var body: some View {
        VStack {
            Text(NSLocalizedString("welcome_message", comment: ""))
                .padding()
            
            Button(NSLocalizedString("language_toggle", comment: "")) {
                currentLanguage = currentLanguage == "en" ? "ru" : "en"
                localeSettings.setLocale(currentLanguage)
            }
            
        }
        .environment(\.locale, localeSettings.locale)
    }
}
