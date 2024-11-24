import SwiftUI
import Combine
import Foundation

class CryptoButtonsViewModel: ObservableObject {
    
//MARK: - Image
    
    class CryptoButtonsImageViewModel: ObservableObject {
        
        @Published var cryptoButtonImage: CryptoButtonsImage
        
        init(cryptoButtonImage: CryptoButtonsImage) {
            self.cryptoButtonImage = cryptoButtonImage
        }
        
        
        func updateCryptoButtonImage(
            newCryptoButtonsImage: String
        ) {
            cryptoButtonImage = CryptoButtonsImage(cryptoButtonsImage: newCryptoButtonsImage)
        }
    }
    
//MARK: - Foreground Color
    
    class CryptoButtonsForegroundColorViewModel: ObservableObject {
        
        @Published var cryptoButtonForegroundColor: CryptoButtonsForegroundColor
        
        init(cryptoButtonForegroundColor: CryptoButtonsForegroundColor) {
            self.cryptoButtonForegroundColor = cryptoButtonForegroundColor
        }
        
        
        func updateCryptoButtonForegroundColor(
            newCryptoButtonsForegroundColor: Color
        ) {
            cryptoButtonForegroundColor = CryptoButtonsForegroundColor(
                cryptoButtonsForegroundColor: newCryptoButtonsForegroundColor
            )
        }
    }
    
//MARK: - Background Color
    
    class CryptoButtonsBackgroundColorViewModel: ObservableObject {
        
        @Published var cryptoButtonBackgroundColor: CryptoButtonsBackgroundColor
        
        init(cryptoButtonBackgroundColor: CryptoButtonsBackgroundColor) {
            self.cryptoButtonBackgroundColor = cryptoButtonBackgroundColor
        }
        
        
        func updateCryptoButtonsBackgroundColor(
            newCryptoButtonsBackgroundColor: Color
        ) {
            cryptoButtonBackgroundColor = CryptoButtonsBackgroundColor(
                cryptoButtonsBackgroundColor: newCryptoButtonsBackgroundColor
            )
        }
        
    }
    
//MARK: - Font Weight
    
    class CryptoButtonsFontWeightViewModel: ObservableObject {
        
        @Published var cryptoButtonFontWeight: CryptoButtonsFontWeight
        
        init(cryptoButtonFontWeight: CryptoButtonsFontWeight) {
            self.cryptoButtonFontWeight = cryptoButtonFontWeight
        }
        
        
        func updateCryptoButtonsFontWeight(
            newCryptoButtonsFontWeight: Font.Weight
        ) {
            cryptoButtonFontWeight = CryptoButtonsFontWeight(cryptoButtonsFontWeight: newCryptoButtonsFontWeight)
        }
    }

}

