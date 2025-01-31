import SwiftUI

struct TradePage: View {
    var body: some View {
        VStack(spacing: 0) {
            VStack(spacing: 0) {
                
                NavigationBar()
                
                Spacer().frame(height: 10)
                
                ScrollView(showsIndicators: false) {
                    VStack {
                        ForEach(0..<20, id: \.self) { _ in
                            ActiveTradeButton(
                                coinImage: "bitcoinsign",
                                background: BitcoinBackgroundColor,
                                coinName: "BTC",
                                coinLine: "crypto-chart-up",
                                betCountCoin: "+98.64782",
                                profitCoin: "34.1%",
                                profitColor: DarkThemeMainGreenColor
                            )
                            ActiveTradeButton(
                                coinImage: "tengesign",
                                background: EtheriumBackgroundColor,
                                coinName: "ETH",
                                coinLine: "crypto-chart-down",
                                betCountCoin: "-3.668393",
                                profitCoin: "25.3%",
                                profitColor: DarkThemeMainRedColor
                            )
                            ActiveTradeButton(
                                coinImage: "chineseyuanrenminbisign",
                                background: YCoinBackgroundColor,
                                coinName: "YTH",
                                coinLine: "crypto-chart-up",
                                betCountCoin: "+342.2344",
                                profitCoin: "12.8%",
                                profitColor: DarkThemeMainGreenColor
                            )
                        }
                    }
                }
                
                Spacer().frame(height: 90)
                
            }
            .frame(maxWidth: .infinity)
            
            Spacer()
        }
        .background(DarkThemeMainBackgroundColor)
        .ignoresSafeArea(.container, edges: .bottom)
    }
}

//MARK: - ACTIVE TRADE BUTTON

private struct ActiveTradeButton: View {
    
    @State var isActiveTradeScreenPresented = false
    
    let coinImage: String
    let background: Color
    let coinName: String
    let coinLine: String
    let betCountCoin: String
    let profitCoin: String
    let profitColor: Color
    
    var body: some View {
        Button { isActiveTradeScreenPresented = true }
        label: {
            HStack(alignment: .center) {
                
                TradeCoinIcon(image: coinImage, background: background)
                
                TradeCoinsTitle(coinName: coinName)
                
                Spacer().frame(width: 15)
                
                TradeCoinLine(image: coinLine)
                
                Spacer()
                
                BetCountTradeCoin(count: betCountCoin)
                
                Spacer().frame(width: 15)
                
                ProfitTradeCoin(profit: profitCoin, color: profitColor)
                
            }
            .padding([.leading, .trailing], 12)
            .frame(width: 365, height: 60)
            .background(DarkThemeMainCardColor)
            .clipShape(RoundedCorner(radius: 7))
            .padding([.leading, .trailing], 20)
            .shadow(radius: 1)
        }.sheet(isPresented: $isActiveTradeScreenPresented) {
            ActiveTradePage()
        }
    }
}

//MARK: - Trade Coin Icon

private struct TradeCoinIcon: View {
    
    let image: String
    let background: Color
    
    var body: some View {
        Image(systemName: image)
            .foregroundColor(DarkThemeMainWhiteColor)
            .fontWeight(.heavy)
            .frame(width: 35, height: 35)
            .background(background)
            .clipShape(RoundedCorner(radius: .infinity))
            .shadow(radius: 1)
    }
}

//MARK: - Trade Coin Title

private struct TradeCoinsTitle: View {
    
    let coinName: String
    
    var body: some View {
        Text(coinName)
            .foregroundColor(DarkThemeStandartTextColor)
            .font(Font.custom("ubuntu-bold", size: 20))
    }
}

//MARK: - Trade Coin Line

private struct TradeCoinLine: View {
    
    let image: String
    
    var body: some View {
        Image(image)
            .resizable()
            .frame(width: 75, height: 35)
            .shadow(radius: 1)
    }
}

//MARK: - Bet Count Trade Coin

private struct BetCountTradeCoin: View {
    
    let count: String
    
    var body: some View {
        Text(count)
            .foregroundColor(DarkThemeSecondTextColor)
            .font(Font.custom("ubuntu-regular", size: 15))
    }
}

//MARK: - Profit Trade Coin

private struct ProfitTradeCoin: View {
    
    let profit: String
    let color: Color
    
    var body: some View {
        Text(profit)
            .foregroundColor(color)
            .font(Font.custom("ubuntu-regular", size: 18))
    }
}



//MARK: - Previews
struct TradePage_Previews: PreviewProvider {
    static var previews: some View {
        TradePage()
    }
}
