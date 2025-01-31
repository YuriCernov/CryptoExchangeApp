import SwiftUI

struct TotalBalanceView: View {
    
    let balance1 = TotalBalanceCardBalanceNumbers(
        coinBalanceMainNumber: "221.",
        coinBalanceSecondaryNumber: "45674523 BTC",
        moneyBalanceNumber: "$10,554.88"
        )
    let exchange1 = TotalBalanceCardExchangeRate(
        exchangeRatePercent: "1.455%",
        exchangeRateForegroundColor: DarkThemeMainRedColor
    )
    let bullBear1 = TotalBalanceCardBullBearRating(
        bullBearRatingArrow: "arrowtriangle.down.fill",
        bullBearRatingForegroundColor: DarkThemeMainRedColor
    )
    
    let balance2 = TotalBalanceCardBalanceNumbers(
        coinBalanceMainNumber: "12.",
        coinBalanceSecondaryNumber: "53628 ETH",
        moneyBalanceNumber: "$3,230.46"
    )
    let exchange2 = TotalBalanceCardExchangeRate(
        exchangeRatePercent: "6.781%",
        exchangeRateForegroundColor: DarkThemeMainGreenColor
    )
    let bullBear2 = TotalBalanceCardBullBearRating(
        bullBearRatingArrow: "arrowtriangle.up.fill",
        bullBearRatingForegroundColor: DarkThemeMainGreenColor
    )
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 10) {
                
                TotalBalanceCard(viewModel: TotalBalanceCardViewModel(
                    coinBalance: balance1,
                    exchangeRate: exchange1,
                    bullBearRating: bullBear1)
                )
                .padding(.leading, 20)
                
                TotalBalanceCard(viewModel: TotalBalanceCardViewModel(
                    coinBalance: balance2,
                    exchangeRate: exchange2,
                    bullBearRating: bullBear2)
                )
                .padding(.trailing, 20)
                
            }
        }
    }
}

//MARK: - Total Balance Title / Lock

struct TotalBalanceTitle: View {
    var body: some View {
        Text("Total Balance")
            .foregroundColor(DarkThemeStandartTextColor)
            .font(Font.custom("ubuntu-Regular", size: 15))
    }
}

struct TotalBalanceLock: View {
    var body: some View {
        Image(systemName: "eye.fill")
            .resizable()
            .foregroundColor(DarkThemeEyeIconColor)
            .fontWeight(.regular)
            .frame(width: 18, height: 11)
            .shadow(radius: 1)
    }
}

//MARK: - Deposit Button

struct DepositButton: View {
    
    @State var isDepositScreenPresented = false
    
    var body: some View {
        Button { isDepositScreenPresented = true }
        label: {
            HStack(alignment: .center, spacing: 15) {
                Image(systemName: "plus")
                    .resizable()
                    .foregroundColor(DarkThemeMainWhiteColor)
                    .frame(width: 15, height: 15)
                Text("Deposit")
                    .foregroundColor(DarkThemeStandartTextColor)
                    .font(Font.custom("ubuntu-regular", size: 15))
            }
            .padding(EdgeInsets(top: 17, leading: -10, bottom: 17, trailing: 16))
            .frame(width: 128, height: 30)
            .background(DarkThemeMainLightColor)
            .clipShape(RoundedCorner(radius: 10))
            .shadow(radius: 1)
        }.sheet(isPresented: $isDepositScreenPresented) {
            DepositPage()
        }
    }
}

//MARK: - Withdraw Button

struct WithdrawButton: View {
    
    @State var isWithdrawScreenPresented = false
    
    var body: some View {
        Button { print("Withdraw") }
        label: {
            Text("Withdraw")
                .foregroundColor(DarkThemeStandartTextColor)
                .font(Font.custom("ubuntu-regular", size: 15))
                .shadow(radius: 5)
        }.sheet(isPresented: $isWithdrawScreenPresented) {
            WithdrawPage()
        }
    }
}

//MARK: - Money Balance

struct MoneyBalance: View {
    
    let moneyBalance: String
    
    var body: some View {
        Text(moneyBalance)
            .foregroundColor(DarkThemeSecondTextColor)
            .font(Font.custom("ubuntu-regular", size: 14))
    }
}

//MARK: - Exchange Rate

struct ExchangeRate: View {
    
    let percent: String
    let foregroundColor: Color
    
    var body: some View {
        Text(percent)
            .foregroundColor(foregroundColor)
            .font(Font.custom("ubuntu-regular", size: 12))
    }
}

//MARK: - Bull / Bear Rating

struct BullBearRating: View {
    
    let arrow: String
    let foregroundColor: Color
    
    var body: some View {
        Image(systemName: arrow)
            .resizable()
            .foregroundColor(foregroundColor)
            .frame(width: 12, height: 6)
    }
}
