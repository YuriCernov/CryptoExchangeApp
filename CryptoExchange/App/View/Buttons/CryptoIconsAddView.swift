import SwiftUI

struct CryptoIconsAddView: View {
    
    @State var isCryptoIconsAddMoreInfoPresented = false
    @StateObject private var viewModel = CryptoIconsAddViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                if viewModel.isLoading {
                    ZStack {
                        Rectangle()
                            .foregroundColor(DarkThemeMainBackgroundColor)
                            .ignoresSafeArea()
                        ProgressView("Loading...")
                            .foregroundColor(DarkThemeStandartTextColor)
                    }
                } else if let errorMessage = viewModel.errorMessage {
                    ZStack {
                        Rectangle()
                            .foregroundColor(DarkThemeMainBackgroundColor)
                            .ignoresSafeArea()
                        Text(errorMessage)
                            .foregroundColor(.red)
                    }
                } else {
                    ZStack {
                        DarkThemeMainBackgroundColor.ignoresSafeArea()
                        
                        List(viewModel.cryptos) { crypto in
                            Button { isCryptoIconsAddMoreInfoPresented = true }
                            label: {
                                VStack(alignment: .leading) {
                                    Text("\(crypto.name) (\(crypto.symbol))")
                                        .foregroundColor(DarkThemeStandartTextColor)
                                        .font(Font.custom("ubuntu-bold", size: 15))
                                        .lineSpacing(24)
                                    Text("$\(crypto.priceUsd)")
                                        .foregroundColor(DarkThemeStandartTextColor)
                                        .font(Font.custom("ubuntu-regular", size: 13))
                                        .lineSpacing(24)
                                }
                            }.sheet(isPresented: $isCryptoIconsAddMoreInfoPresented) {
                                MoreInfoHistoryPage()
                            }
                            .padding(.vertical, 10)
                            .background(DarkThemeMainCardColor)
                            .cornerRadius(12)
                            .listRowSeparator(.visible)
                            .listRowSeparatorTint(DarkThemeDividerColor)
                            .listRowBackground(DarkThemeMainCardColor)
                        }.scrollContentBackground(.hidden)
                    }
                }
            }
            .navigationTitle("All Crypto")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}


struct CryptoIconAddView_Previews: PreviewProvider {
    static var previews: some View {
        CryptoIconsAddView()
    }
}
