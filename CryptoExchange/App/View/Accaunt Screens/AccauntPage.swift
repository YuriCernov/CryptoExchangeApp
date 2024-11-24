import SwiftUI

struct AccauntPage: View {
    var body: some View {
        VStack(spacing: 0) {
            VStack(spacing: 0) {
                Spacer().frame(height: 10)
                ScrollView(showsIndicators: false) {
                    VStack(spacing: -30) {
                        ProfilePicture(rectagnleSize: 165, imageSize: 150)
                        ProfilePictureEditButton()
                    }
                    Spacer().frame(height: 20)
                    Divider().frame(height: 1).background(DarkThemeDividerColor).padding([.leading, .trailing], 20)
                    Spacer().frame(height: 10)
                    ProfileNameSurnameTitle()
                    Spacer().frame(height: 10)
                    Divider().frame(height: 1).background(DarkThemeDividerColor).padding([.leading, .trailing], 20)
                    Spacer().frame(height: 10)
                    ProfileEMailTitle()
                    Spacer().frame(height: 10)
                    Divider().frame(height: 1).background(DarkThemeDividerColor).padding([.leading, .trailing], 20)
                    Spacer().frame(height: 10)
                    ProfilePasswordIdTitle()
                    Spacer().frame(height: 10)
                    Divider().frame(height: 1).background(DarkThemeDividerColor).padding([.leading, .trailing], 20)
                    Spacer().frame(height: 10)
                    ProfileRegisteredDate()
                    Spacer().frame(height: 10)
                    Divider().frame(height: 1).background(DarkThemeDividerColor).padding([.leading, .trailing], 20)
                }
            }.frame(maxWidth: .infinity)
            Spacer()
        }
        .background(DarkThemeMainBackgroundColor)
        .ignoresSafeArea(.container, edges: .bottom)
    }
}

//MARK: - PROFILE PICTURE

struct ProfilePicture: View {
    
    let rectagnleSize: CGFloat
    let imageSize: CGFloat
    
    var body: some View {
        ZStack(alignment: .center) {
            Rectangle()
                .foregroundColor(DarkThemeMainLightColor)
                .frame(width: rectagnleSize, height: rectagnleSize)
                .clipShape(RoundedCorner(radius: 90))
                .shadow(radius: 1)
            Image("profile_picture")
                .resizable()
                .frame(width: imageSize, height: imageSize)
                .clipShape(RoundedCorner(radius: 90))
                .shadow(radius: 1)
            
        }
    }
}

private struct ProfilePictureEditButton: View {
    var body: some View {
        Button { print("Edit Picture") }
        label: {
            Image(systemName: "plus")
                .resizable()
                .frame(width: 15, height: 15)
                .foregroundColor(DarkThemeMainWhiteColor)
                .frame(width: 30, height: 30)
                .background(DarkThemeMainCardColor)
                .clipShape(RoundedCorner(radius: 90))
        }
    }
}

//MARK: - PROFILE NAME / SURNAME

private struct ProfileNameSurnameTitle: View {
    var body: some View {
        VStack(spacing: 5) {
            MainCardStyle(mainText: "Name", descriptionText: "Yuri")
            MainCardStyle(mainText: "Surname", descriptionText: "Cernov")
        }
    }
}

//MARK: - PROFILE EMAIL

private struct ProfileEMailTitle: View {
    var body: some View {
        VStack(spacing: 5) {
            MainCardStyle(mainText: "E-Mail", descriptionText: "jurij.cernovs@gmail.com")
            MainCardStyle(mainText: "Second E-Mail", descriptionText: "cernovyury@gmail.com")
        }
    }
}

//MARK: - PASSWORD AND ID

private struct ProfilePasswordIdTitle: View {
    var body: some View {
        VStack(spacing: 5) {
            MainCardStyle(mainText: "Password", descriptionText: "**************")
            MainCardStyle(mainText: "ID", descriptionText: "84bnf939d388")
        }
    }
}

//MARK: - PROFILE REGISTER DATE

private struct ProfileRegisteredDate: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 3) {
            Text("Registered Date")
                .foregroundColor(DarkThemeDescriptionTextColor)
                .font(Font.custom("ubuntu-regular", size: 12))
            HStack {
                Text("18.05.2017")
                    .foregroundColor(DarkThemeStandartTextColor)
                    .font(Font.custom("ubuntu-regular", size: 17))
                Spacer()
            }
            .padding([.leading, .trailing], 20)
            .frame(width: 365, height: 50)
            .background(DarkThemeMainCardColor)
            .clipShape(RoundedCorner(radius: 10))
            .shadow(radius: 1)
        }
    }
}

//MARK: - MAIN CARD STYLE

private struct MainCardStyle: View {
    
    let mainText: String
    let descriptionText: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 3) {
            Text(mainText)
                .foregroundColor(DarkThemeDescriptionTextColor)
                .font(Font.custom("ubuntu-regular", size: 12))
            HStack {
                Text(descriptionText)
                    .foregroundColor(DarkThemeStandartTextColor)
                    .font(Font.custom("ubuntu-regular", size: 17))
                Spacer()
                Button { print("Edit E-Mail") }
                label: {
                    Text("Edit")
                        .foregroundColor(DarkThemeMainLightColor)
                        .font(Font.custom("ubuntu-italic", size: 17))
                }
            }
            .padding([.leading, .trailing], 20)
            .frame(width: 365, height: 50)
            .background(DarkThemeMainCardColor)
            .clipShape(RoundedCorner(radius: 10))
            .shadow(radius: 1)
        }
    }
}



//MARK: - PREVIEWS

struct AccauntPage_Previews: PreviewProvider {
    static var previews: some View {
        AccauntPage()
    }
}
