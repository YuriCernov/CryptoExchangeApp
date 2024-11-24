import Foundation
import SwiftUI

class CryptoIconsAddAPI {
    func fetchCryptos(completion: @escaping ([CryptoIconsAddModel]?) -> Void) {
        guard let url = URL(string: "https://api.coincap.io/v2/assets") else {
            completion(nil)
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data {
                do {
                    let cryptoResponse = try JSONDecoder().decode(CryptoIconsAddResponse.self, from: data)
                    completion(cryptoResponse.data)
                    
                    print("Timestamp: \(cryptoResponse.timestamp)")
                } catch {
                    print("Error with decoding: \(error)")
                    completion(nil)
                }
            } else if let error = error {
                print("Error with request: \(error)")
                completion(nil)
            }
        }
        task.resume()
    }
}
