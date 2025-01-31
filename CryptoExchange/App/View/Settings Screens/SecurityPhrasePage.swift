import SwiftUI

struct SecurityPhrasePage: View {
    
    let securityPhraseTitle = SettingsScreensTitle(settingsScreensTitle: "Security Phrase")
    let securityPhraseDescription = SettingsScreensDescription(settingsScreensDescription:
            """
            At SecureVault, we offer a Trusted IP Address feature to enhance your account's security and convenience. By designating specific IP addresses as "trusted," you can bypass certain security checks, such as multi-factor authentication, when accessing your account from these locations. This is ideal for users who frequently log in from secure, known networks, such as home or work.

            Trusted IP addresses help streamline your login experience while ensuring your account remains protected. You can manage and update your list of trusted IP addresses at any time for maximum flexibility and control.
            """
    )
    
    var body: some View {
        VStack {
            VStack {
                
                Spacer().frame(height: 50)
                
                SettingsScreensView(
                    viewModelTitle: SettingsScreensViewModel.SettingsScreensTitleViewModel(
                        settingsScreensTitle: securityPhraseTitle
                    ),
                    viewModelDescription: SettingsScreensViewModel.SettingsScreensDescriptionViewModel(
                        settingsScreensDescription: securityPhraseDescription
                    )
                )
                
                Spacer()
            }
            .frame(maxWidth: .infinity)
        }
        .background(DarkThemeMainBackgroundColor)
        .ignoresSafeArea(.container, edges: .bottom)
    }
}



//MARK: - Previews

struct SecurityPhrasePage_Previews: PreviewProvider {
    static var previews: some View {
        SecurityPhrasePage()
    }
}
