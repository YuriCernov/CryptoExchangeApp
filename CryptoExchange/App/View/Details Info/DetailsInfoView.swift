import SwiftUI

struct DetailsInfoView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 18) {
            
            HStack(alignment: .center) {
                
                LimitsInfo(title: "In Order:", value: "256.45 BTC")
                
                Spacer()
                
                LimitsLine(
                    widthFill: 43,
                    widthEmpty: 55,
                    foregroundColorFill: DarkThemeMainYellowColor
                )
                
            }
            
            HStack(alignment: .center) {
                
                HStack(spacing: 13) {
                    LimitsInfo(title: "Daily Limit:", value: "$75,000")
                    DailyLimitButton()
                }
                
                Spacer()
                
                LimitsLine(
                    widthFill: 81,
                    widthEmpty: 16,
                    foregroundColorFill: DarkThemeMainRedColor
                )
                
            }
            
            Divider()
                .frame(height: 1)
                .background(DarkThemeDividerColor)
            
            HStack(spacing: 12) {
                CryptoIconsButtons()
                CryptoAddButton()
            }
            
            HStack(spacing: 11) {
                
                GraphicPrices(
                    title: "Last Price:",
                    titleForegroundColor: DarkThemeSecondTextColor,
                    value: "1110",
                    valueForegroundColor: DarkThemeStandartTextColor,
                    additionalValue: ".23 USD",
                    additionalValueForegroundColor: DarkThemeSecondTextColor
                )
                
                HStack(spacing: 34) {
                    GraphicPrices(
                        title: "Low:",
                        titleForegroundColor: DarkThemeSecondTextColor,
                        value: "853",
                        valueForegroundColor: DarkThemeStandartTextColor,
                        additionalValue: ".11 USD",
                        additionalValueForegroundColor: DarkThemeSecondTextColor
                    )
                    GraphicPrices(
                        title: "High:",
                        titleForegroundColor: DarkThemeMainGreenColor,
                        value: "1495",
                        valueForegroundColor: DarkThemeMainGreenColor,
                        additionalValue: ".86 USD",
                        additionalValueForegroundColor: DarkThemeMainGreenColor
                    )
                }
                
            }
            
            VStack(alignment: .leading, spacing: 10) {
                Graphic()
                HStack(spacing: 0) {
                    GraphicDates()
                }
            }
            
        }
        .padding([.leading, .trailing, .top, .bottom], 20)
        .frame(width: 365, height: 370)
        .background(DarkThemeMainCardColor)
        .clipShape(RoundedCorner(radius: 30))
        .shadow(radius: 1)
    }
}

//MARK: - Limits Info

struct LimitsInfo: View {
    
    let title: String
    let value: String
    
    var body: some View {
        HStack(spacing: 3) {
            Text(title)
                .foregroundColor(DarkThemeSecondTextColor)
                .font(Font.custom("ubuntu-regular", size: 14))
            Text(value)
                .foregroundColor(DarkThemeStandartTextColor)
                .font(Font.custom("ubuntu-regular", size: 14))
        }
    }
}

//MARK: - Limits Line

struct LimitsLine: View {
    
    let widthFill: CGFloat
    let widthEmpty: CGFloat
    let foregroundColorFill: Color
    
    var body: some View {
        HStack(alignment: .center, spacing: 0) {
            Rectangle()
                .frame(width: widthFill, height: 7)
                .foregroundColor(foregroundColorFill)
                .clipShape(RoundedCorner(radius: 30, corners: .topLeft))
                .clipShape(RoundedCorner(radius: 30, corners: .bottomLeft))
            Rectangle()
                .frame(width: widthEmpty, height: 7)
                .foregroundColor(DarkThemeMainLightColor)
                .clipShape(RoundedCorner(radius: 30, corners: .topRight))
                .clipShape(RoundedCorner(radius: 30, corners: .bottomRight))
        }
    }
}

//MARK: - Daily Limit Button

struct DailyLimitButton: View {
    
    @State var isDailyLimitScreenPresented = false
    
    var body: some View {
        Button { isDailyLimitScreenPresented = true }
        label: {
            Image(systemName: "arrow.up")
                .foregroundColor(DarkThemeMainWhiteColor)
                .frame(width: 25, height: 25)
                .background(DarkThemeMainLightColor)
                .clipShape(RoundedCorner(radius: 8))
        }.sheet(isPresented: $isDailyLimitScreenPresented) {
            DailyLimitPage()
        }
    }
}

// Crypto Add Button

struct CryptoAddButton: View {
    
    @State var isCryptoAddScreenPresented = false
    
    let addButtonIM = CryptoButtonsImage(
        cryptoButtonsImage: "plus"
    )
    let addButtonFC = CryptoButtonsForegroundColor(
        cryptoButtonsForegroundColor: DarkThemeMainWhiteColor
    )
    let addButtonBC = CryptoButtonsBackgroundColor(
        cryptoButtonsBackgroundColor: DarkThemeMainLightColor
    )
    let addButtonFW = CryptoButtonsFontWeight(
        cryptoButtonsFontWeight: .light
    )
    
    var body: some View {
        Button { isCryptoAddScreenPresented = true }
        label: {
            CryptoButtonsView(
                viewModelIM: CryptoButtonsViewModel.CryptoButtonsImageViewModel(
                    cryptoButtonImage: addButtonIM
                ),
                viewModelFC: CryptoButtonsViewModel.CryptoButtonsForegroundColorViewModel(
                    cryptoButtonForegroundColor: addButtonFC
                ),
                viewModelBG: CryptoButtonsViewModel.CryptoButtonsBackgroundColorViewModel(
                    cryptoButtonBackgroundColor: addButtonBC
                ),
                viewModelFW: CryptoButtonsViewModel.CryptoButtonsFontWeightViewModel(
                    cryptoButtonFontWeight: addButtonFW
                )
            ).sheet(isPresented: $isCryptoAddScreenPresented) {
                CryptoIconsAddView()
            }
        }
    }
}

//MARK: - Graphic Prices

struct GraphicPrices: View {
    
    let title: String
    let titleForegroundColor: Color
    let value: String
    let valueForegroundColor: Color
    let additionalValue: String
    let additionalValueForegroundColor: Color
    
    var body: some View {
        HStack(alignment: .bottom, spacing: 2) {
            
            Text(title)
                .foregroundColor(titleForegroundColor)
                .font(Font.custom("ubuntu-regular", size: 10))
            
            HStack(alignment: .bottom, spacing: 0) {
                Text(value)
                    .foregroundColor(valueForegroundColor)
                    .font(Font.custom("ubuntu-regular", size: 12))
                Text(additionalValue)
                    .foregroundColor(additionalValueForegroundColor)
                    .font(Font.custom("ubuntu-regular", size: 10))
            }
            
        }
    }
}

//MARK: - Graphic

private struct Graphic: View {
    var body: some View {
        VStack(alignment: .trailing) {
            Image("candlesticks")
                .resizable()
                .frame(width: 324, height: 130)
        }
    }
}

//MARK: - Graphic Dates

private struct GraphicDates: View {
    
    private enum Constants {
        static let dateZeroText = "Jun 20"
        static let dateOneText = "Jun 21"
        static let dateTwoText = "Jun 22"
        static let dateThreeText = "Jun 23"
        static let dateFourText = "Jun 24"
        static let dateFiveText = "Jun 25"
        
        static let textFontName = "ubuntu-regular"
        static let textSize: CGFloat = 10
        static let hstackSpacing: CGFloat = 28
    }
    
    var body: some View {
        HStack(alignment: .bottom, spacing: Constants.hstackSpacing) {
            
            Text(Constants.dateZeroText)
                .foregroundColor(DarkThemeSecondTextColor)
                .font(Font.custom(Constants.textFontName, size: Constants.textSize))
            
            Text(Constants.dateOneText)
                .foregroundColor(DarkThemeSecondTextColor)
                .font(Font.custom(Constants.textFontName, size: Constants.textSize))
            
            Text(Constants.dateTwoText)
                .foregroundColor(DarkThemeSecondTextColor)
                .font(Font.custom(Constants.textFontName, size: Constants.textSize))
            
            Text(Constants.dateThreeText)
                .foregroundColor(DarkThemeSecondTextColor)
                .font(Font.custom(Constants.textFontName, size: Constants.textSize))
            
            Text(Constants.dateFourText)
                .foregroundColor(DarkThemeSecondTextColor)
                .font(Font.custom(Constants.textFontName, size: Constants.textSize))
            
            Text(Constants.dateFiveText)
                .foregroundColor(DarkThemeSecondTextColor)
                .font(Font.custom(Constants.textFontName, size: Constants.textSize))
            
        }
    }
}
