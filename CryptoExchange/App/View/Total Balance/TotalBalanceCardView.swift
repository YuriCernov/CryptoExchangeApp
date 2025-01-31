import SwiftUI

struct TotalBalanceCard: View {
    
    @ObservedObject var viewModel: TotalBalanceCardViewModel
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 10) {
                
                HStack(alignment: .center, spacing: 210) {
                    TotalBalanceTitle()
                    TotalBalanceLock()
                }
                
                CoinBalanceView(
                    mainNumbers: viewModel.coinBalance.coinBalanceMainNumber,
                    secondaryNumbers: viewModel.coinBalance.coinBalanceSecondaryNumber
                )
                
                HStack(spacing: 7) {
                    HStack(alignment: .center, spacing: 25) {
                        MoneyBalance(moneyBalance: viewModel.coinBalance.moneyBalanceNumber)
                        ExchangeRate(
                            percent: viewModel.exchangeRate.exchangeRatePercent,
                            foregroundColor: viewModel.exchangeRate.exchangeRateForegroundColor
                        )
                    }
                    BullBearRating(
                        arrow: viewModel.bullBearRating.bullBearRatingArrow,
                        foregroundColor: viewModel.bullBearRating.bullBearRatingForegroundColor
                    )
                }
                
                HStack(spacing: 60) {
                    DepositButton()
                    WithdrawButton()
                }
                .padding(.top, 15)
                
            }
            .frame(width: 365, height: 174)
            .background(DarkThemeMainCardColor)
            .clipShape(RoundedCorner(radius: 30))
            .shadow(radius: 1)
        }
    }
}
