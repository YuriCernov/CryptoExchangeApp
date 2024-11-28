import SwiftUI

struct SettingsScreensView: View {
    
    @ObservedObject var viewModelTitle: SettingsScreensViewModel.SettingsScreensTitleViewModel
    @ObservedObject var viewModelDescription: SettingsScreensViewModel.SettingsScreensDescriptionViewModel
    
    var body: some View {
        VStack {
            VStack {
                Spacer().frame(height: 50)
                Text(viewModelTitle.settingsScreensTitle.settingsScreensTitle)
                    .foregroundColor(DarkThemeStandartTextColor)
                    .font(Font.custom("ubuntu-Bold", size: 16))
                Text(viewModelDescription.settingsScreensDescription.settingsScreensDescription)
                .foregroundColor(DarkThemeDescriptionTextColor)
                .font(Font.custom("ubuntu-regular", size: 15))
                .padding([.leading, .trailing, .top, .bottom], 20)
                .background(DarkThemeMainCardColor)
                .clipShape(RoundedCorner(radius: 20))
                .frame(width: 365, height: .infinity)
                
                Spacer()
            }.frame(maxWidth: .infinity)
        }
        .background(DarkThemeMainBackgroundColor)
        .ignoresSafeArea(.container, edges: .bottom)
    }
}

