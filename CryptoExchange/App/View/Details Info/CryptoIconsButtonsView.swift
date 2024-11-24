import SwiftUI

struct CryptoIconsButtons: View {
    
    @State var isCryptoIconScreenPresented = false
    
    let button1IM = CryptoButtonsImage(cryptoButtonsImage: "bitcoinsign")
    let button1FC = CryptoButtonsForegroundColor(cryptoButtonsForegroundColor: DarkThemeMainWhiteColor)
    let button1BC = CryptoButtonsBackgroundColor(cryptoButtonsBackgroundColor: BitcoinBackgroundColor)
    let button1FW = CryptoButtonsFontWeight(cryptoButtonsFontWeight: .heavy)
    
    let button2IM = CryptoButtonsImage(cryptoButtonsImage: "chineseyuanrenminbisign")
    let button2FC = CryptoButtonsForegroundColor(cryptoButtonsForegroundColor: DarkThemeMainGreenColor)
    let button2BC = CryptoButtonsBackgroundColor(cryptoButtonsBackgroundColor: YCoinBackgroundColor)
    let button2FW = CryptoButtonsFontWeight(cryptoButtonsFontWeight: .heavy)
    
    let button3IM = CryptoButtonsImage(cryptoButtonsImage: "tengesign")
    let button3FC = CryptoButtonsForegroundColor(cryptoButtonsForegroundColor: DarkThemeMainWhiteColor)
    let button3BC = CryptoButtonsBackgroundColor(cryptoButtonsBackgroundColor: EtheriumBackgroundColor)
    let button3FW = CryptoButtonsFontWeight(cryptoButtonsFontWeight: .heavy)
    
    var body: some View {
        Button { isCryptoIconScreenPresented = true }
        label: {
            CryptoButtonsView(
                viewModelIM: CryptoButtonsViewModel.CryptoButtonsImageViewModel(cryptoButtonImage: button1IM),
                viewModelFC: CryptoButtonsViewModel.CryptoButtonsForegroundColorViewModel(cryptoButtonForegroundColor: button1FC),
                viewModelBG: CryptoButtonsViewModel.CryptoButtonsBackgroundColorViewModel(cryptoButtonBackgroundColor: button1BC),
                viewModelFW: CryptoButtonsViewModel.CryptoButtonsFontWeightViewModel(cryptoButtonFontWeight: button1FW)
            ).sheet(isPresented: $isCryptoIconScreenPresented) {
                CryptoIconPage()
            }
        }
        Button { isCryptoIconScreenPresented = true }
        label: {
            CryptoButtonsView(
                viewModelIM: CryptoButtonsViewModel.CryptoButtonsImageViewModel(cryptoButtonImage: button2IM),
                viewModelFC: CryptoButtonsViewModel.CryptoButtonsForegroundColorViewModel(cryptoButtonForegroundColor: button2FC),
                viewModelBG: CryptoButtonsViewModel.CryptoButtonsBackgroundColorViewModel(cryptoButtonBackgroundColor: button2BC),
                viewModelFW: CryptoButtonsViewModel.CryptoButtonsFontWeightViewModel(cryptoButtonFontWeight: button2FW)
            ).sheet(isPresented: $isCryptoIconScreenPresented) {
                CryptoIconPage()
            }
        }
        Button { isCryptoIconScreenPresented = true }
        label: {
            CryptoButtonsView(
                viewModelIM: CryptoButtonsViewModel.CryptoButtonsImageViewModel(cryptoButtonImage: button3IM),
                viewModelFC: CryptoButtonsViewModel.CryptoButtonsForegroundColorViewModel(cryptoButtonForegroundColor: button3FC),
                viewModelBG: CryptoButtonsViewModel.CryptoButtonsBackgroundColorViewModel(cryptoButtonBackgroundColor: button3BC),
                viewModelFW: CryptoButtonsViewModel.CryptoButtonsFontWeightViewModel(cryptoButtonFontWeight: button3FW)
            ).sheet(isPresented: $isCryptoIconScreenPresented) {
                CryptoIconPage()
            }
        }
    }
}
