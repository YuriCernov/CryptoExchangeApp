import SwiftUI

struct AppView: View {
    
    @State var selectTab = "Home"
    
    let tabs = [ "Home", "TradeHistory", "Wallets", "Trade" ]
    
    init() { UITabBar.appearance().isHidden = true }
    
    var body: some View {
        ZStack(alignment: .bottom) {
            TabView(selection: $selectTab) {
                HomePage()
                    .tag("Home")
                TradeHistoryPage()
                    .tag("TradeHistory")
                WalletsPage()
                    .tag("Wallets")
                TradePage()
                    .tag("Trade")
            }
            
            HStack {
                ForEach(tabs, id: \.self) { tab in
                    Spacer()
                    TabBarItem(tab: tab, selected: $selectTab)
                    Spacer()
                }
            }
            .padding(.top, 20)
            .padding(.bottom, 20)
            .frame(width: 365, height: 70)
            .background(DarkThemeMainBackgroundColor)
            .clipShape(RoundedCorner(radius: 30))
            .shadow(radius: 5)
        }
    }
}

//MARK: - Tab Bar Item

struct TabBarItem: View {
    
    @State var tab: String
    @Binding var selected: String
    
    var body: some View {
        ZStack {
            Button { withAnimation(.spring()) { selected = tab }}
            label: {
                Image(tab).resizable().frame(width: 20, height: 24)
            }
        }
        .opacity(selected == tab ? 1 : 0.7)
        .padding(.vertical, 10)
        .padding(.horizontal, 17)
        .background(selected == tab ? Color(DarkThemeMainCardColor) : Color(DarkThemeMainBackgroundColor))
        .clipShape(Capsule())
    }
}



//MARK: - PREVIEWS

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
