import SwiftUI

struct BackupCodesPage: View {
    var body: some View {
        VStack {
            VStack {
                Spacer().frame(height: 50)
                BackupCodesTitle()
                BackupCodesLines()
                Spacer()
            }.frame(maxWidth: .infinity)
        }
        .background(DarkThemeMainBackgroundColor)
        .ignoresSafeArea(.container, edges: .bottom)
    }
}

private struct BackupCodesTitle: View {
    var body: some View {
        Text("Backup Codes")
            .foregroundColor(DarkThemeStandartTextColor)
            .font(Font.custom("ubuntu-Bold", size: 16))
    }
}

private struct BackupCodesLines: View {
    var body: some View {
        Text(
            """
            At SecureVault, we provide backup codes as an additional layer of security. Backup codes are a set of single-use codes that you can generate and store securely, allowing you to access your account in case you’re unable to use your primary authentication method, such as multi-factor authentication (MFA) or a lost device.

            We recommend saving these codes in a safe place, as they can be your emergency solution to regain access to your account. Each code can be used only once, and you can regenerate new codes whenever needed, ensuring continuous protection.
            """
        )
        .foregroundColor(DarkThemeDescriptionTextColor)
        .font(Font.custom("ubuntu-regular", size: 15))
        .padding([.leading, .trailing, .top, .bottom], 20)
        .background(DarkThemeMainCardColor)
        .clipShape(RoundedCorner(radius: 20))
        .frame(width: 365, height: .infinity)
    }
}



//MARK: - Previews

struct BackupCodesPage_Previews: PreviewProvider {
    static var previews: some View {
        BackupCodesPage()
    }
}
