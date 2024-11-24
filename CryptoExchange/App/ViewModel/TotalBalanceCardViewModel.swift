import SwiftUI

class TotalBalanceCardViewModel: ObservableObject {
    
    @Published var coinBalance: TotalBalanceCardBalanceNumbers
    @Published var exchangeRate: TotalBalanceCardExchangeRate
    @Published var bullBearRating: TotalBalanceCardBullBearRating
    
    init(
        coinBalance: TotalBalanceCardBalanceNumbers,
        exchangeRate: TotalBalanceCardExchangeRate,
        bullBearRating: TotalBalanceCardBullBearRating
    ) {
        self.coinBalance = coinBalance
        self.exchangeRate = exchangeRate
        self.bullBearRating = bullBearRating
    }
    
    
    func updateBalanceNumbers(
        newCoinBalanceMainNumber: String,
        newCoinBalanceSecondaryNumber: String,
        newMoneyBalanceNumber: String
    ) {
        coinBalance = TotalBalanceCardBalanceNumbers(
            coinBalanceMainNumber: newCoinBalanceMainNumber,
            coinBalanceSecondaryNumber: newCoinBalanceSecondaryNumber,
            moneyBalanceNumber: newMoneyBalanceNumber
        )
    }
    
    func updateExchangeRate(newExchangeRatePercent: String, newExchangeRateForegroundColor: Color) {
        exchangeRate = TotalBalanceCardExchangeRate(
            exchangeRatePercent: newExchangeRatePercent,
            exchangeRateForegroundColor: newExchangeRateForegroundColor
        )
    }
    
    func updateBullBearRating(newBullBearRatingArrow: String, newBullBearRatingForegroundColor: Color) {
        bullBearRating = TotalBalanceCardBullBearRating(
            bullBearRatingArrow: newBullBearRatingArrow,
            bullBearRatingForegroundColor: newBullBearRatingForegroundColor
        )
    }
}
