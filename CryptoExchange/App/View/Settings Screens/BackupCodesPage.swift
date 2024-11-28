import SwiftUI

struct BackupCodesPage: View {
    
    let backupCodesTitle = SettingsScreensTitle(settingsScreensTitle: "Backup Codes")
    let backupCodesDescription = SettingsScreensDescription(settingsScreensDescription: """
            At SecureVault, we provide backup codes as an additional layer of security. Backup codes are a set of single-use codes that you can generate and store securely, allowing you to access your account in case you’re unable to use your primary authentication method, such as multi-factor authentication (MFA) or a lost device.

            We recommend saving these codes in a safe place, as they can be your emergency solution to regain access to your account. Each code can be used only once, and you can regenerate new codes whenever needed, ensuring continuous protection.
            """)
    
    var body: some View {
        VStack {
            VStack {
                Spacer().frame(height: 50)
                SettingsScreensView(
                    viewModelTitle:
                        SettingsScreensViewModel.SettingsScreensTitleViewModel(settingsScreensTitle: backupCodesTitle),
                    viewModelDescription:
                        SettingsScreensViewModel.SettingsScreensDescriptionViewModel(settingsScreensDescription: backupCodesDescription))
                
                Spacer()
            }.frame(maxWidth: .infinity)
        }
        .background(DarkThemeMainBackgroundColor)
        .ignoresSafeArea(.container, edges: .bottom)
    }
}



//MARK: - Previews

struct BackupCodesPage_Previews: PreviewProvider {
    static var previews: some View {
        BackupCodesPage()
    }
}
