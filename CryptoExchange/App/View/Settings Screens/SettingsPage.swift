import SwiftUI

struct SettingsPage: View {
    var body: some View {
        VStack {
            ScrollView(showsIndicators: false) {
                VStack {
                    Spacer()
                    MainSettings()
                    Spacer().frame(height: 20)
                    AboutUsCard()
                    PasswordCard()
                    BackupCodesCard()
                    TrustIPAddress()
                    SecurityPhrase()
                    Policy()
                    CommentsCard()
                }.frame(maxWidth: .infinity)
            }
        }
        .background(DarkThemeMainBackgroundColor)
        .ignoresSafeArea(.container, edges: .bottom)
    }
}

//MARK: - MAIN SETTINGS

private struct MainSettings: View {
    
    @State var isOn1 = true
    @State var isOn2 = true
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .leading, spacing: 0) {
                AuthenticatorAppButton(isOn1: $isOn1)
                Divider().frame(height: 1).background(DarkThemeDividerColor)
                VoiceOrTextMessageButton(isOn2: $isOn2)
            }
            .padding([.leading, .trailing, .top, .bottom], 20)
            .background(DarkThemeMainCardColor)
            .clipShape(RoundedCorner(radius: 20))
            .frame(width: 365, height: 243)
            .shadow(radius: 1)
        }
    }
}

private struct AuthenticatorAppButton: View {
    
    @Binding var isOn1: Bool
    
    var body: some View {
        HStack {
            IconStyle(image: "shield.lefthalf.filled.badge.checkmark")
            Toggle("Authenticator App", isOn: $isOn1)
                .foregroundColor(DarkThemeStandartTextColor)
                .font(Font.custom("ubuntu-bold", size: 17))
        }.padding(.bottom, 10)
        
        HStack {
            MainBottomTextStyle(text: "Prevent unauthorized access and used for withdrawals, and other security purposes.")
        }.padding(.bottom, 20)
    }
}

private struct VoiceOrTextMessageButton: View {
    
    @Binding var isOn2: Bool
    
    var body: some View {
        HStack {
            IconStyle(image: "ellipsis.bubble.fill")
            Toggle("Voice or Text Message", isOn: $isOn2)
                .foregroundColor(DarkThemeStandartTextColor)
                .font(Font.custom("ubuntu-bold", size: 17))
        }.padding(.top, 20).padding(.bottom, 10)
        
        HStack {
            MainBottomTextStyle(text: "Prevent unauthorized access and used for withdrawals, and other security purposes.")
        }
    }
}

//MARK: - Main Switcher Styles

private struct IconStyle: View {
    
    let image: String
    
    var body: some View {
        Image(systemName: image)
            .resizable()
            .foregroundColor(DarkThemeSecondIconColor)
            .frame(width: 27, height: 27)
            .padding(.trailing, 10)
    }
}

private struct MainBottomTextStyle: View {
    
    let text: String
    
    var body: some View {
        Text(text)
            .padding(.leading, 45)
            .foregroundColor(DarkThemeStandartTextColor)
            .font(Font.custom("Ubuntu-regular", size: 13))
    }
}

//MARK: - CARD

private struct Card<Destination: View>: View {
    
    @State private var isPresented = false
    
    let cardMainText: String
    let cardDateText: String
    let cardBottomText: String
    let destination: Destination
    
    var body: some View {
        VStack(alignment: .leading, spacing: 7) {
            HStack {
                Button { isPresented = true }
                label: {
                    MainTextStyle(text: cardMainText)
                    Spacer()
                }.sheet(isPresented: $isPresented) {
                    destination
                }
                DateTextStyle(dateText: "(Last Update: \(cardDateText)")
            }
            BottomTextStyle(bottomText: cardBottomText)
        }
        .padding([.top, .bottom], 10).padding([.leading, .trailing], 20)
        .frame(minWidth: 365, maxWidth: 365, minHeight: 72)
        .background(DarkThemeMainCardColor)
        .clipShape(RoundedCorner(radius: 10))
        .shadow(radius: 1)
    }
}

//MARK: - ABOUT US CARD

private struct AboutUsCard: View {
    var body: some View {
        Card(
            cardMainText: "About Us",
            cardDateText: "2019/12/01",
            cardBottomText: "We are new technology company, our App is perfect. And we love our clients.",
            destination: AboutUsPage()
        )
    }
}

//MARK: - PASSWORD CARD

private struct PasswordCard: View {
    var body: some View {
        Card(
            cardMainText: "Password",
            cardDateText: "2019/12/01",
            cardBottomText: "Enhance your security with a strong and unique password for your Bitex accaunt.",
            destination: PasswordPage()
        )
    }
}

//MARK: - BACKUP CODES CARD

private struct BackupCodesCard: View {
    var body: some View {
        Card(
            cardMainText: "Backup Codes",
            cardDateText: "2019/12/01",
            cardBottomText: "This feature lets you use 10 one-time codes to log in or disable two-factor authentication when away from your phone.",
            destination: BackupCodesPage()
        )
    }
}

//MARK: - TRUST IP AADDRESS CARD

private struct TrustIPAddress: View {
    var body: some View {
        Card(
            cardMainText: "Trust IP Address",
            cardDateText: "2019/12/01",
            cardBottomText: "This security feature lets you to control who can access your Bitex account based on their IP addresses.",
            destination: TrustIPAddressPage()
        )
    }
}

//MARK: - SECURITY PHRASE CARD

private struct SecurityPhrase: View {
    var body: some View {
        Card(
            cardMainText: "Security Phrase",
            cardDateText: "2019/12/01",
            cardBottomText: "You can review your account's security logs including the information below to better understand the actions you've performed in the last 90 days.",
            destination: SecurityPhrasePage()
        )
    }
}

//MARK: - POLICY CARD

private struct Policy: View {
    var body: some View {
        Card(
            cardMainText: "Policy",
            cardDateText: "2019/12/01",
            cardBottomText: "You can read all about our Policy in the log of Policy.",
            destination: PolicyPage()
        )
    }
}

//MARK: - COMMENTS CARD

private struct CommentsCard: View {
    var body: some View {
        Card(
            cardMainText: "Comments",
            cardDateText: "2019/12/01",
            cardBottomText: "Enhance your security with a strong and unique password for your Bitex accaunt.",
            destination: CommentsView()
        )
    }
}

//MARK: - Texts Style

private struct MainTextStyle: View {
    
    let text: String
    
    var body: some View {
        Text(text)
            .foregroundColor(DarkThemeStandartTextColor)
            .font(.headline)
            .shadow(radius: 5)
    }
}

private struct DateTextStyle: View {
    
    let dateText: String
    
    var body: some View {
        Text(dateText)
            .foregroundColor(DarkThemeDescriptionTextColor)
            .font(Font.custom("Ubuntu-Italic", size: 13))
    }
}

private struct BottomTextStyle: View {
    
    let bottomText: String
    
    var body: some View {
        Text(bottomText)
            .foregroundColor(DarkThemeDescriptionTextColor)
            .font(Font.custom("Ubuntu-regular", size: 13))
    }
}



//MARK: - Preview

struct SettingsPage_Previews: PreviewProvider {
    static var previews: some View {
        SettingsPage()
    }
}
