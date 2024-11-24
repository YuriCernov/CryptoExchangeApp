import SwiftUI

struct HomePage: View {
    var body: some View {
        VStack(spacing: 0) {
            VStack(spacing: 0) {
                NavigationBar()
                Spacer().frame(height: 10)
                TotalBalanceView()
                Spacer().frame(height: 50)
                DetailsInfoView()
            }.frame(maxWidth: .infinity)
            Spacer()
        }
        .background(DarkThemeMainBackgroundColor)
        .ignoresSafeArea(.container, edges: .bottom)
    }
}





//MARK: - PREVIEWS

#Preview {
    HomePage()
}
