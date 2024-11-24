import SwiftUI

struct WalletsPage: View {
    var body: some View {
        VStack(spacing: 0) {
            VStack(spacing: 0) {
                NavigationBar()
                Spacer().frame(height: 10)
                ScrollView(showsIndicators: false) {
                    VStack(spacing: 20) {
                        Cards(image: "card1")
                        Cards(image: "card2")
                        Cards(image: "card3")
                        Cards(image: "card4")
                        AddCard()
                    }
                }
                Spacer().frame(height: 90)
            }.frame(maxWidth: .infinity)
            Spacer()
        }
        .background(DarkThemeMainBackgroundColor)
        .ignoresSafeArea(.container, edges: .bottom)
    }
}

//MARK: - Cards

private struct Cards: View {
    
    let image: String
    
    var body: some View {
        Image(image)
            .resizable()
            .frame(width: 350, height: 220)
            .clipShape(RoundedCorner(radius: 20))
    }
}

//MARK: - Add Card

private struct AddCard: View {
    
    @State var isAddCardScreenPresented = false
    
    var body: some View {
        Button { isAddCardScreenPresented = true }
        label: {
            HStack(alignment: .center, spacing: 15) {
                Image(systemName: "plus")
                    .resizable()
                    .foregroundColor(DarkThemeMainWhiteColor)
                    .frame(width: 15, height: 15)
                Text("Add Card")
                    .foregroundColor(DarkThemeStandartTextColor)
                    .font(Font.custom("ubuntu-regular", size: 16))
                    .lineSpacing(24)
            }
            .padding(EdgeInsets(top: 17, leading: 2, bottom: 17, trailing: 16))
            .frame(width: 128, height: 30)
            .background(DarkThemeMainLightColor)
            .clipShape(RoundedCorner(radius: 10))
            .shadow(radius: 1)
        }.sheet(isPresented: $isAddCardScreenPresented) {
            AddCardPage()
        }
    }
}



//MARK: - Previews

struct WalletsPage_Previews: PreviewProvider {
    static var previews: some View {
        WalletsPage()
    }
}
