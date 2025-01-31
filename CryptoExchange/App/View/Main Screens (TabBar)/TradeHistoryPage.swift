import SwiftUI

struct TradeHistoryPage: View {
    var body: some View {
        VStack(spacing: 0) {
            VStack(spacing: 0) {
                
                NavigationBar()
                
                Spacer().frame(height: 10)
                
                ScrollView(showsIndicators: false) {
                    VStack {
                        ForEach(0..<20, id: \.self) { _ in
                            TradeHistoryButtons()
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

//MARK: - TRADE HISTORY BUTTONS

struct TradeHistoryButtons: View {
    var body: some View {
        VStack(spacing: -15) {
            
            HStack(alignment: .top) {
                CoinIcons(
                    image: "bitcoinsign",
                    background: BitcoinBackgroundColor,
                    width: 35,
                    height: 35
                )
                    .padding(.trailing, 17)
                
                CoinsTitle(coinPair: "BTC/USD")
                
                Spacer()
                
                CoinsLine()
                
                CoinPercent()
            }
            .padding([.leading, .trailing], 10)
            
            HStack(alignment: .center) {
                CoinIcons(
                    image: "dollarsign",
                    background: DollarBackgroundColor,
                    width: 25,
                    height: 25
                )
                    .padding(.trailing, 2)
                
                BetCountCoin(count: "109000.90000076 BTC")
                
                Spacer()
                
                BetCountCoin(count: "0.00112300 USD")
                
                MoreInfoButton()
                    .padding([.leading, .trailing], 10)
            }
            .padding(.leading, 35)
            
        }
        .frame(width: 365, height: 62)
        .background(DarkThemeMainCardColor)
        .clipShape(RoundedCorner(radius: 12))
        .padding([.leading, .trailing], 20)
        .shadow(radius: 1)
    }
}

//MARK: - Coin Icons

private struct CoinIcons: View {
    
    let image: String
    let background: Color
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        Image(systemName: image)
            .foregroundColor(DarkThemeMainWhiteColor)
            .fontWeight(.heavy)
            .frame(width: width, height: height)
            .background(background)
            .clipShape(RoundedCorner(radius: .infinity))
            .shadow(radius: 1)
    }
}

//MARK: - Coins Title

private struct CoinsTitle: View {
    
    let coinPair: String
    
    var body: some View {
        Text(coinPair)
            .foregroundColor(DarkThemeStandartTextColor)
            .font(Font.custom("ubuntu-bold", size: 14))
            .lineSpacing(24)
            .padding(.top, 4)
    }
}

//MARK: - Coins Line

private struct CoinsLine: View {
    var body: some View {
        Rectangle()
            .frame(width: 103, height: 5)
            .foregroundColor(DarkThemeMainBlueColor)
            .clipShape(RoundedCorner(radius: 30, corners: .allCorners))
            .padding(.top, 12)
    }
}

//MARK: - Coin Percent

private struct CoinPercent: View {
    var body: some View {
        Text("100%")
            .foregroundColor(DarkThemeMainBlueColor)
            .font(Font.custom("ubuntu-regular", size: 10))
            .lineSpacing(24)
            .padding(.top, 7)
    }
}

//MARK: - Bet Count Coins

private struct BetCountCoin: View {
    
    let count: String
    
    var body: some View {
        Text(count)
            .foregroundColor(DarkThemeStandartTextColor)
            .font(Font.custom("ubuntu-regular", size: 12))
            .lineSpacing(24)
    }
}

//MARK: - More Info Button

private struct MoreInfoButton: View {
    
    @State var isMoreInfoHistoryScreenPresented = false
    
    var body: some View {
        Button { isMoreInfoHistoryScreenPresented = true }
        label: {
            Image(systemName: "info")
                .foregroundColor(DarkThemeMainWhiteColor)
                .frame(width: 20, height: 20)
                .background(DarkThemeMainLightColor)
                .clipShape(RoundedCorner(radius: .infinity))
        }.sheet(isPresented: $isMoreInfoHistoryScreenPresented) {
            MoreInfoHistoryPage()
        }
    }
}



//MARK: - Preview

struct TradeHistory_Previews: PreviewProvider {
    static var previews: some View {
        TradeHistoryPage()
    }
}
