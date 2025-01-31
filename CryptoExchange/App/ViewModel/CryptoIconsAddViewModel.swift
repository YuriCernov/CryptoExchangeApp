import Foundation
import Combine
import SwiftUI

class CryptoIconsAddViewModel: ObservableObject {
    
    @Published var cryptos: [CryptoIconsAddModel] = []
    @Published var isLoading: Bool = false
    @Published var errorMessage: String?

    private let api = CryptoIconsAddAPI()

    init() {
        fetchCryptos()
    }

    func fetchCryptos() {
        isLoading = true
        errorMessage = nil
        
        api.fetchCryptos { [weak self] cryptos in
            DispatchQueue.main.async {
                
                self?.isLoading = false
                
                if let cryptos = cryptos {
                    self?.cryptos = cryptos
                } else {
                    self?.errorMessage = "Failed to fetch crypto data."
                }
            }
        }
    }
}

