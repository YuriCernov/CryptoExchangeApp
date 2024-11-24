import SwiftUI

struct SecurityPhrasePage: View {
    var body: some View {
        VStack {
            VStack {
                Spacer().frame(height: 50)
                SecurityPhraseTitle()
                SecurityPhraseLines()
                Spacer()
            }.frame(maxWidth: .infinity)
        }
        .background(DarkThemeMainBackgroundColor)
        .ignoresSafeArea(.container, edges: .bottom)
    }
}

private struct SecurityPhraseTitle: View {
    var body: some View {
        Text("Security Phrase")
            .foregroundColor(DarkThemeStandartTextColor)
            .font(Font.custom("ubuntu-bold", size: 16))
    }
}

private struct SecurityPhraseLines: View {
    var body: some View {
        Text(
            """
            At SecureVault, we offer a Trusted IP Address feature to enhance your account's security and convenience. By designating specific IP addresses as "trusted," you can bypass certain security checks, such as multi-factor authentication, when accessing your account from these locations. This is ideal for users who frequently log in from secure, known networks, such as home or work.

            Trusted IP addresses help streamline your login experience while ensuring your account remains protected. You can manage and update your list of trusted IP addresses at any time for maximum flexibility and control.
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

struct SecurityPhrasePage_Previews: PreviewProvider {
    static var previews: some View {
        SecurityPhrasePage()
    }
}
