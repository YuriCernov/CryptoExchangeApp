import SwiftUI

struct PasswordPage: View {
    
    let passwordTitle = SettingsScreensTitle(settingsScreensTitle: "Password")
    let passwordDescription = SettingsScreensDescription(settingsScreensDescription:
            """
            At SecureVault, we take password security seriously. Our platform encourages the use of strong, unique passwords to ensure the safety of your online accounts. When creating a password, we recommend using a combination of uppercase and lowercase letters, numbers, and special characters. To further enhance security, we support multi-factor authentication (MFA) and password generation tools that help you create unguessable credentials.

            We also offer encrypted storage for all your passwords, making sure they remain private and accessible only to you. Your data is protected by end-to-end encryption, meaning not even we have access to your passwords.
            """
    )
    
    var body: some View {
        VStack {
            VStack {
                Spacer().frame(height: 50)
                SettingsScreensView(
                    viewModelTitle: SettingsScreensViewModel.SettingsScreensTitleViewModel(settingsScreensTitle: passwordTitle),
                    viewModelDescription: SettingsScreensViewModel.SettingsScreensDescriptionViewModel(settingsScreensDescription: passwordDescription))
                Spacer()
            }.frame(maxWidth: .infinity)
        }
        .background(DarkThemeMainBackgroundColor)
        .ignoresSafeArea(.container, edges: .bottom)
    }
}



//MARK: - Previews

struct PasswordPage_Previews: PreviewProvider {
    static var previews: some View {
        PasswordPage()
    }
}
