import SwiftUI

struct CoinBalanceView: View {
    
    let mainNumbers: String
    let secondaryNumbers: String
    
    var body: some View {
        HStack(spacing: 0) {
            Text(mainNumbers)
                .foregroundColor(DarkThemeStandartTextColor)
                .font(Font.custom("ubuntu-Bold", size: 28))
            Text(secondaryNumbers)
                .foregroundColor(DarkThemeStandartTextColor)
                .font(Font.custom("ubuntu-Regular", size: 28))
        }
    }
}
