import SwiftUI

struct NavigationBar: View {
    var body: some View {
        HStack(spacing: 0) {
            
            Rectangle().fill(.clear).frame(maxWidth: 130)
            
            NavigationBarIcon()
            
                HStack {
                    NavigationBarSettingsButton()
                    
                    Spacer()
                    
                    NavigationBarAccauntIconButton()
                }
                .padding(.trailing, 15).padding(.leading, 35)
                .frame(width: 130)
            
        }
        .frame(height: 56)
    }
}

//MARK: - Navigation Bar Icon

struct NavigationBarIcon: View {
    
    private enum Constants {
        static let nameName = "Bstock"
        static let nameLetter = "B           "
        static let textName = "ubuntu-Bold"
        static let textSize: CGFloat = 18
    }
    
    var body: some View {
        ZStack(alignment: .center) {
            Text(Constants.nameName)
                .foregroundColor(DarkThemeLogoFirstColor)
                .font(Font.custom(Constants.textName, size: Constants.textSize))
            Text(Constants.nameLetter)
                .foregroundColor(LogoSecondColor)
                .font(Font.custom(Constants.textName, size: Constants.textSize))
        }
        .frame(width: 130)
    }
}

//MARK: - Settings Button

struct NavigationBarSettingsButton: View {
    
    @State var isSettingsScreenPresented = false
    
    var body: some View {
        Button { isSettingsScreenPresented = true }
        label: {
            Image(systemName: "gearshape")
                .resizable()
                .foregroundColor(DarkThemeSettingsIconColor)
                .fontWeight(.light)
                .frame(width: 18, height: 18)
                .padding(.trailing, 10)
        }.sheet(isPresented: $isSettingsScreenPresented) {
            SettingsPage()
        }
    }
}

//MARK: - Accaunt Button

struct NavigationBarAccauntIconButton: View {
    
    @State var isAccauntScreenPresented = false
    
    var body: some View {
        Button { isAccauntScreenPresented = true }
        label: {
            ProfilePicture(rectagnleSize: 42, imageSize: 36)
        }.sheet(isPresented: $isAccauntScreenPresented) {
            AccauntPage()
        }
    }
}



//MARK: - PREVIEWS

struct NavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBar()
    }
}
