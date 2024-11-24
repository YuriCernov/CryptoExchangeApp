import SwiftUI

struct AboutUsPage: View {
    var body: some View {
        VStack {
            ScrollView(showsIndicators: false) {
                VStack {
                    Spacer().frame(height: 50)
                    AboutUs()
                    Spacer()
                }.frame(maxWidth: .infinity)
            }
        }
        .background(DarkThemeMainBackgroundColor)
        .ignoresSafeArea(.container, edges: .bottom)
    }
}

private struct MainTitle: View {
    
    let mainText: String
    
    var body: some View {
        Text(mainText)
            .foregroundColor(DarkThemeStandartTextColor)
            .font(Font.custom("ubuntu-Bold", size: 16))
    }
}

private struct SecondaryText: View {
    
    let secondaryText: String
    
    var body: some View {
        Text(secondaryText)
        .foregroundColor(DarkThemeDescriptionTextColor)
        .font(Font.custom("ubuntu-regular", size: 15))
        .padding([.leading, .trailing, .top, .bottom], 20)
        .background(DarkThemeMainCardColor)
        .clipShape(RoundedCorner(radius: 20))
        .frame(width: 365, height: .infinity)
    }
}

private struct AboutUs: View {
    var body: some View {
        MainTitle(mainText: "About Us")
        
        SecondaryText(secondaryText:
                        """
                        Welcome to BStock, your trusted partner in the world of digital assets. At BStock, we believe that the future of finance lies in the decentralized economy, where individuals have full control over their wealth, free from traditional banking systems and intermediaries. Our mission is simple: to empower people worldwide by providing them with a secure, intuitive, and innovative platform to manage, store, and grow their cryptocurrency assets.
                        """
        )
        
        Spacer().frame(height: 30)
        
        MainTitle(mainText: "Who We Are?")
        
        SecondaryText(secondaryText:
                        """
                        Founded in 2018 by a team of blockchain enthusiasts, security experts, and fintech innovators, BStock was built on a foundation of transparency, trust, and cutting-edge technology. Our founders recognized the growing demand for a user-friendly yet highly secure cryptocurrency wallet that meets the needs of both beginners and experienced crypto users alike. With backgrounds in cybersecurity, blockchain development, and global finance, our team is passionate about making cryptocurrency accessible to everyone.
                        """
        )
        
        Spacer().frame(height: 30)
        
        MainTitle(mainText: "What We Do?")
        
        SecondaryText(secondaryText:
                        """
                        BStock is more than just a digital wallet—it’s a complete solution for managing your cryptocurrencies with ease. Whether you’re holding Bitcoin, Ethereum, or other altcoins, our platform offers robust security features, seamless multi-currency support, and advanced tools to help you track and manage your investments.

                        Our wallet is non-custodial, meaning you are the sole owner of your private keys and, therefore, your funds. We never have access to your assets. Your security and privacy are our top priority, and we utilize state-of-the-art encryption, biometric verification, and two-factor authentication to protect your digital wealth.
                        """
        )
        
        Spacer().frame(height: 30)
    }
}



//MARK: - Previews

struct AboutUsPage_Previews: PreviewProvider {
    static var previews: some View {
        AboutUsPage()
    }
}
