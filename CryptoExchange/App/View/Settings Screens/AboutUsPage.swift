import SwiftUI

struct AboutUsPage: View {
    
    let aboutUsTitle = SettingsScreensTitle(settingsScreensTitle: "About Us")
    let aboutUsDescription = SettingsScreensDescription(settingsScreensDescription:
                        """
                        Welcome to BStock, your trusted partner in the world of digital assets. At BStock, we believe that the future of finance lies in the decentralized economy, where individuals have full control over their wealth, free from traditional banking systems and intermediaries. Our mission is simple: to empower people worldwide by providing them with a secure, intuitive, and innovative platform to manage, store, and grow their cryptocurrency assets.
                        """
    )
    
    let whoAreWeTitle = SettingsScreensTitle(settingsScreensTitle: "Who We Are?")
    let whoAreWeDescription = SettingsScreensDescription(settingsScreensDescription:
                        """
                        Founded in 2018 by a team of blockchain enthusiasts, security experts, and fintech innovators, BStock was built on a foundation of transparency, trust, and cutting-edge technology. Our founders recognized the growing demand for a user-friendly yet highly secure cryptocurrency wallet that meets the needs of both beginners and experienced crypto users alike. With backgrounds in cybersecurity, blockchain development, and global finance, our team is passionate about making cryptocurrency accessible to everyone.
                        """
    )
    
    let whatWeDoTitle = SettingsScreensTitle(settingsScreensTitle: "What We Do?")
    let whatWeDoDescription = SettingsScreensDescription(settingsScreensDescription:
                        """
                        BStock is more than just a digital wallet—it’s a complete solution for managing your cryptocurrencies with ease. Whether you’re holding Bitcoin, Ethereum, or other altcoins, our platform offers robust security features, seamless multi-currency support, and advanced tools to help you track and manage your investments.

                        Our wallet is non-custodial, meaning you are the sole owner of your private keys and, therefore, your funds. We never have access to your assets. Your security and privacy are our top priority, and we utilize state-of-the-art encryption, biometric verification, and two-factor authentication to protect your digital wealth.
                        """
    )
    
    var body: some View {
        VStack {
            ScrollView(showsIndicators: false) {
                VStack {
                    Spacer().frame(height: 50)
                    SettingsScreensView(
                        viewModelTitle: SettingsScreensViewModel.SettingsScreensTitleViewModel(settingsScreensTitle: aboutUsTitle),
                        viewModelDescription: SettingsScreensViewModel.SettingsScreensDescriptionViewModel(settingsScreensDescription: aboutUsDescription)
                    )
                    SettingsScreensView(
                        viewModelTitle: SettingsScreensViewModel.SettingsScreensTitleViewModel(settingsScreensTitle: whoAreWeTitle),
                        viewModelDescription: SettingsScreensViewModel.SettingsScreensDescriptionViewModel(settingsScreensDescription: whoAreWeDescription)
                    )
                    SettingsScreensView(
                        viewModelTitle: SettingsScreensViewModel.SettingsScreensTitleViewModel(settingsScreensTitle: whatWeDoTitle),
                        viewModelDescription: SettingsScreensViewModel.SettingsScreensDescriptionViewModel(settingsScreensDescription: whatWeDoDescription)
                    )
                    Spacer()
                }.frame(maxWidth: .infinity)
            }
        }
        .background(DarkThemeMainBackgroundColor)
        .ignoresSafeArea(.container, edges: .bottom)
    }
}



//MARK: - Previews

struct AboutUsPage_Previews: PreviewProvider {
    static var previews: some View {
        AboutUsPage()
    }
}
