import SwiftUI
import Combine
import Foundation

struct CryptoButtonsView: View {
    
    @ObservedObject var viewModelIM: CryptoButtonsViewModel.CryptoButtonsImageViewModel
    @ObservedObject var viewModelFC: CryptoButtonsViewModel.CryptoButtonsForegroundColorViewModel
    @ObservedObject var viewModelBG: CryptoButtonsViewModel.CryptoButtonsBackgroundColorViewModel
    @ObservedObject var viewModelFW: CryptoButtonsViewModel.CryptoButtonsFontWeightViewModel
    
    var body: some View {
        Image(systemName: viewModelIM.cryptoButtonImage.cryptoButtonsImage)
            .foregroundColor(viewModelFC.cryptoButtonForegroundColor.cryptoButtonsForegroundColor)
            .fontWeight(viewModelFW.cryptoButtonFontWeight.cryptoButtonsFontWeight)
            .frame(width: 30, height: 30)
            .background(viewModelBG.cryptoButtonBackgroundColor.cryptoButtonsBackgroundColor)
            .clipShape(RoundedCorner(radius: 8))
    }
}
