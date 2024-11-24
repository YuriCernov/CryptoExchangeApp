import SwiftUI
import Combine

struct TotalBalanceCardBalanceNumbers: Codable {
    let coinBalanceMainNumber: String
    let coinBalanceSecondaryNumber: String
    let moneyBalanceNumber: String
}

struct TotalBalanceCardExchangeRate {
    let exchangeRatePercent: String
    let exchangeRateForegroundColor: Color
}

struct TotalBalanceCardBullBearRating {
    let bullBearRatingArrow: String
    let bullBearRatingForegroundColor: Color
}
