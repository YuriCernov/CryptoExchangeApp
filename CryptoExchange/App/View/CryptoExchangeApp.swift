import SwiftUI

@main
struct CryptoExchangeApp: App {
    
    init() {
        
        let backgroundColor = UIColor(DarkThemeMainBackgroundColor)
        let titleText = UIColor(DarkThemeStandartTextColor)
        
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = backgroundColor
        appearance.titleTextAttributes = [.foregroundColor: titleText]
        appearance.largeTitleTextAttributes = [.foregroundColor: titleText]
        
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
        UINavigationBar.appearance().compactAppearance = appearance
        
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
