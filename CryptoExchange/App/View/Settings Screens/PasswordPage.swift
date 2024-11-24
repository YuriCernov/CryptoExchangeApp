import SwiftUI

struct PasswordPage: View {
    var body: some View {
        VStack {
            VStack {
                Spacer().frame(height: 50)
                PasswordTitle()
                PasswordLines()
                Spacer()
            }.frame(maxWidth: .infinity)
        }
        .background(DarkThemeMainBackgroundColor)
        .ignoresSafeArea(.container, edges: .bottom)
    }
}

private struct PasswordTitle: View {
    var body: some View {
        Text("Password")
            .foregroundColor(DarkThemeStandartTextColor)
            .font(Font.custom("ubuntu-bold", size: 16))
    }
}

private struct PasswordLines: View {
    var body: some View {
        Text(
            """
            At SecureVault, we take password security seriously. Our platform encourages the use of strong, unique passwords to ensure the safety of your online accounts. When creating a password, we recommend using a combination of uppercase and lowercase letters, numbers, and special characters. To further enhance security, we support multi-factor authentication (MFA) and password generation tools that help you create unguessable credentials.

            We also offer encrypted storage for all your passwords, making sure they remain private and accessible only to you. Your data is protected by end-to-end encryption, meaning not even we have access to your passwords.
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

struct PasswordPage_Previews: PreviewProvider {
    static var previews: some View {
        PasswordPage()
    }
}
