import SwiftUI

struct MoreInfoHistoryPage: View {
    var body: some View {
        VStack {
            VStack {
                Spacer().frame(height: 20)
                TradeHistoryButtons()
                Spacer().frame(height: 20)
                Divider().frame(height: 1).background(DarkThemeDividerColor)
                Spacer().frame(height: 20)
                MoreInfoHistory()
            }.frame(maxWidth: .infinity)
            Spacer()
        }
        .background(DarkThemeMainBackgroundColor)
        .ignoresSafeArea(.container, edges: .bottom)
    }
}

private struct MoreInfoHistory: View {
    var body: some View {
        VStack(spacing: 18) {
            OrderIdTitle()
            PriceTitle()
            DateTitle()
            RequestedTitle()
            CanceledTitle()
            FilledTitle()
            MethodTitle()
        }
        .padding([.leading, .trailing], 30)
        .padding([.top, .bottom], 30)
        .frame(width: 365, height: 300)
        .background(DarkThemeMainCardColor)
        .clipShape(RoundedCorner(radius: 12))
        .shadow(radius: 1)
    }
}

private struct OrderIdTitle: View {
    var body: some View {
        HStack {
            Text("Order ID :")
            Spacer()
            Text("0001320#4e5")
        }
        .foregroundColor(DarkThemeStandartTextColor)
        .font(Font.custom("ubuntu-regular", size: 16))
    }
}

private struct PriceTitle: View {
    var body: some View {
        HStack {
            Text("Price :")
            Spacer()
            Text("0.002300 BTC")
        }
        .foregroundColor(DarkThemeStandartTextColor)
        .font(Font.custom("ubuntu-regular", size: 16))
    }
}

private struct DateTitle: View {
    var body: some View {
        HStack {
            Text("Date :")
            Spacer()
            Text("2018.01.24 at 08:04:05")
        }
        .foregroundColor(DarkThemeStandartTextColor)
        .font(Font.custom("ubuntu-regular", size: 16))
    }
}

private struct RequestedTitle: View {
    var body: some View {
        HStack {
            Text("Requested :")
            Spacer()
            Text("150")
        }
        .foregroundColor(DarkThemeStandartTextColor)
        .font(Font.custom("ubuntu-regular", size: 16))
    }
}

private struct CanceledTitle: View {
    var body: some View {
        HStack {
            Text("Canceled :")
            Spacer()
            Text("10 (10%)")
        }
        .foregroundColor(DarkThemeStandartTextColor)
        .font(Font.custom("ubuntu-regular", size: 16))
    }
}

private struct FilledTitle: View {
    var body: some View {
        HStack {
            Text("Filled :")
            Spacer()
            Text("140 (90%)")
        }
        .foregroundColor(DarkThemeStandartTextColor)
        .font(Font.custom("ubuntu-regular", size: 16))
    }
}

private struct MethodTitle: View {
    var body: some View {
        HStack {
            Text("Method :")
                .foregroundColor(DarkThemeStandartTextColor)
                .font(Font.custom("ubuntu-regular", size: 16))
            Spacer()
            HStack(alignment: .bottom, spacing: 18) {
                Text("Mobile")
                    .foregroundColor(DarkThemeMainLightColor)
                    .font(Font.custom("ubuntu-bold", size: 15))
                Text("Web")
                    .foregroundColor(DarkThemeMainBlackColor)
                    .font(Font.custom("ubuntu-bold", size: 15))
                    .frame(width: 56, height: 20)
                    .background(DarkThemeMainGreenColor)
                    .clipShape(RoundedCorner(radius: 5))
                    .shadow(radius: 1)
                Text("API")
                    .foregroundColor(DarkThemeMainLightColor)
                    .font(Font.custom("ubuntu-bold", size: 15))
            }
        }
    }
}



//MARK: - Previews

struct MoreInfoHistoryPage_Previews: PreviewProvider {
    static var previews: some View {
        MoreInfoHistoryPage()
    }
}
