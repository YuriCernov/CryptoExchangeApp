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
    
    private enum ConstantsOrderId {
        static let orderIdOrderId = "Order ID :"
        static let orderIdReal = "0001320#4e5"
    }
    
    var body: some View {
        HStack {
            Text(ConstantsOrderId.orderIdOrderId)
            
            Spacer()
            
            Text(ConstantsOrderId.orderIdReal)
        }
        .foregroundColor(DarkThemeStandartTextColor)
        .font(Font.custom("ubuntu-regular", size: 16))
    }
}

private struct PriceTitle: View {
    
    private enum ConstantsPrice {
        static let pricePrice = "Price :"
        static let priceReal = "0.002300 BTC"
    }
    
    var body: some View {
        HStack {
            Text(ConstantsPrice.pricePrice)
            
            Spacer()
            
            Text(ConstantsPrice.priceReal)
        }
        .foregroundColor(DarkThemeStandartTextColor)
        .font(Font.custom("ubuntu-regular", size: 16))
    }
}

private struct DateTitle: View {
    
    private enum ConstantsDate {
        static let dateDate = "Date :"
        static let dateReal = "2018.01.24 at 08:04:05"
    }
    
    var body: some View {
        HStack {
            Text(ConstantsDate.dateDate)
            
            Spacer()
            
            Text(ConstantsDate.dateReal)
        }
        .foregroundColor(DarkThemeStandartTextColor)
        .font(Font.custom("ubuntu-regular", size: 16))
    }
}

private struct RequestedTitle: View {
    
    private enum ConstantsRequested {
        static let requestedRequested = "Requested :"
        static let requestedReal = "150"
    }
    
    var body: some View {
        HStack {
            Text(ConstantsRequested.requestedRequested)
            
            Spacer()
            
            Text(ConstantsRequested.requestedReal)
        }
        .foregroundColor(DarkThemeStandartTextColor)
        .font(Font.custom("ubuntu-regular", size: 16))
    }
}

private struct CanceledTitle: View {
    
    private enum ConstantsCanceled {
        static let canceledCanceled = "Canceled :"
        static let canceledReal = "10 (10%)"
    }
    
    var body: some View {
        HStack {
            Text(ConstantsCanceled.canceledCanceled)
            
            Spacer()
            
            Text(ConstantsCanceled.canceledReal)
        }
        .foregroundColor(DarkThemeStandartTextColor)
        .font(Font.custom("ubuntu-regular", size: 16))
    }
}

private struct FilledTitle: View {
    
    private enum ConstantsFilled {
        static let filledFilled = "Filled :"
        static let filledReal = "140 (90%)"
    }
    
    var body: some View {
        HStack {
            Text(ConstantsFilled.filledFilled)
            
            Spacer()
            
            Text(ConstantsFilled.filledReal)
        }
        .foregroundColor(DarkThemeStandartTextColor)
        .font(Font.custom("ubuntu-regular", size: 16))
    }
}

private struct MethodTitle: View {
    
    private enum ConstantsMethod {
        static let methodMethod = "Method :"
        static let methodMobile = "Mobile"
        static let methodWeb = "Web"
        static let methodApi = "API"
    }
    
    var body: some View {
        HStack {
            
            Text(ConstantsMethod.methodMethod)
                .foregroundColor(DarkThemeStandartTextColor)
                .font(Font.custom("ubuntu-regular", size: 16))
            
            Spacer()
            
            HStack(alignment: .bottom, spacing: 18) {
                Text(ConstantsMethod.methodMobile)
                    .foregroundColor(DarkThemeMainLightColor)
                    .font(Font.custom("ubuntu-bold", size: 15))
                Text(ConstantsMethod.methodWeb)
                    .foregroundColor(DarkThemeMainBlackColor)
                    .font(Font.custom("ubuntu-bold", size: 15))
                    .frame(width: 56, height: 20)
                    .background(DarkThemeMainGreenColor)
                    .clipShape(RoundedCorner(radius: 5))
                    .shadow(radius: 1)
                Text(ConstantsMethod.methodApi)
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
