import SwiftUI

struct MoreInfoHistoryPage: View {
    var body: some View {
        VStack {
            VStack {
                
                Spacer().frame(height: 20)
                
                TradeHistoryButtons()
                
                Spacer().frame(height: 20)
                
                Divider()
                    .frame(height: 1)
                    .background(DarkThemeDividerColor)
                
                Spacer().frame(height: 20)
                
                MoreInfoHistory()
                
            }
            .frame(maxWidth: .infinity)
            
            Spacer()
        }
        .background(DarkThemeMainBackgroundColor)
        .ignoresSafeArea(.container, edges: .bottom)
    }
}

private struct MoreInfoHistory: View {
    
    private enum Constants {
        static let vstackSpacing: CGFloat = 18
        static let vstackLeadingTrailingPadding: CGFloat = 30
        static let vstackTopBottomPadding: CGFloat = 30
        static let vstackClipShapeRoundedCornerRadius: CGFloat = 12
        static let vstackShadowRadius: CGFloat = 1
    }
    
    var body: some View {
        VStack(spacing: Constants.vstackSpacing) {
            OrderIdTitle()
            PriceTitle()
            DateTitle()
            RequestedTitle()
            CanceledTitle()
            FilledTitle()
            MethodTitle()
        }
        .padding([.leading, .trailing], Constants.vstackLeadingTrailingPadding)
        .padding([.top, .bottom], Constants.vstackTopBottomPadding)
        .frame(width: 365, height: 300)
        .background(DarkThemeMainCardColor)
        .clipShape(RoundedCorner(radius: Constants.vstackClipShapeRoundedCornerRadius))
        .shadow(radius: Constants.vstackShadowRadius)
    }
}

private struct OrderIdTitle: View {
    
    private enum Constants {
        static let orderIdOrderId = "Order ID :"
        static let orderIdReal = "0001320#4e5"
        static let textFontName = "ubuntu-regular"
        static let textSize: CGFloat = 16
    }
    
    var body: some View {
        HStack {
            Text(Constants.orderIdOrderId)
            
            Spacer()
            
            Text(Constants.orderIdReal)
        }
        .foregroundColor(DarkThemeStandartTextColor)
        .font(Font.custom(Constants.textFontName, size: Constants.textSize))
    }
}

private struct PriceTitle: View {
    
    private enum Constants {
        static let pricePrice = "Price :"
        static let priceReal = "0.002300 BTC"
        static let textFontName = "ubuntu-regular"
        static let textSize: CGFloat = 16
    }
    
    var body: some View {
        HStack {
            Text(Constants.pricePrice)
            
            Spacer()
            
            Text(Constants.priceReal)
        }
        .foregroundColor(DarkThemeStandartTextColor)
        .font(Font.custom(Constants.textFontName, size: Constants.textSize))
    }
}

private struct DateTitle: View {
    
    private enum Constants {
        static let dateDate = "Date :"
        static let dateReal = "2018.01.24 at 08:04:05"
        static let textFontName = "ubuntu-regular"
        static let textSize: CGFloat = 16
    }
    
    var body: some View {
        HStack {
            Text(Constants.dateDate)
            
            Spacer()
            
            Text(Constants.dateReal)
        }
        .foregroundColor(DarkThemeStandartTextColor)
        .font(Font.custom(Constants.textFontName, size: Constants.textSize))
    }
}

private struct RequestedTitle: View {
    
    private enum Constants {
        static let requestedRequested = "Requested :"
        static let requestedReal = "150"
        static let textFontName = "ubuntu-regular"
        static let textSize: CGFloat = 16
    }
    
    var body: some View {
        HStack {
            Text(Constants.requestedRequested)
            
            Spacer()
            
            Text(Constants.requestedReal)
        }
        .foregroundColor(DarkThemeStandartTextColor)
        .font(Font.custom(Constants.textFontName, size: Constants.textSize))
    }
}

private struct CanceledTitle: View {
    
    private enum Constants {
        static let canceledCanceled = "Canceled :"
        static let canceledReal = "10 (10%)"
        static let textFontName = "ubuntu-regular"
        static let textSize: CGFloat = 16
    }
    
    var body: some View {
        HStack {
            Text(Constants.canceledCanceled)
            
            Spacer()
            
            Text(Constants.canceledReal)
        }
        .foregroundColor(DarkThemeStandartTextColor)
        .font(Font.custom(Constants.textFontName, size: Constants.textSize))
    }
}

private struct FilledTitle: View {
    
    private enum Constants {
        static let filledFilled = "Filled :"
        static let filledReal = "140 (90%)"
        static let textFontName = "ubuntu-regular"
        static let textSize: CGFloat = 16
    }
    
    var body: some View {
        HStack {
            Text(Constants.filledFilled)
            
            Spacer()
            
            Text(Constants.filledReal)
        }
        .foregroundColor(DarkThemeStandartTextColor)
        .font(Font.custom(Constants.textFontName, size: Constants.textSize))
    }
}

private struct MethodTitle: View {
    
    private enum Constants {
        static let methodMethod = "Method :"
        static let methodMobile = "Mobile"
        static let methodWeb = "Web"
        static let methodApi = "API"
        static let textFontName = "ubuntu-regular"
        static let hstackTextFontName = "ubuntu-bold"
        
        static let textSize: CGFloat = 16
        static let hstackTextSize: CGFloat = 15
        static let hstackSpacing: CGFloat = 18
        static let methodWebClipShapeRoundedCornerRadius: CGFloat = 5
        static let methodWebShadosRadius: CGFloat = 1
    }
    
    var body: some View {
        HStack {
            
            Text(Constants.methodMethod)
                .foregroundColor(DarkThemeStandartTextColor)
                .font(Font.custom(Constants.textFontName, size: Constants.textSize))
            
            Spacer()
            
            HStack(alignment: .bottom, spacing: Constants.hstackSpacing) {
                Text(Constants.methodMobile)
                    .foregroundColor(DarkThemeMainLightColor)
                    .font(Font.custom(Constants.hstackTextFontName, size: Constants.hstackTextSize))
                Text(Constants.methodWeb)
                    .foregroundColor(DarkThemeMainBlackColor)
                    .font(Font.custom(Constants.hstackTextFontName, size: Constants.hstackTextSize))
                    .frame(width: 56, height: 20)
                    .background(DarkThemeMainGreenColor)
                    .clipShape(RoundedCorner(radius: Constants.methodWebClipShapeRoundedCornerRadius))
                    .shadow(radius: Constants.methodWebShadosRadius)
                Text(Constants.methodApi)
                    .foregroundColor(DarkThemeMainLightColor)
                    .font(Font.custom(Constants.hstackTextFontName, size: Constants.hstackTextSize))
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
