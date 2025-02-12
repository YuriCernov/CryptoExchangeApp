import SwiftUI

struct AccauntPage: View {
    
    private enum Constants {
        static let vstackMainSpacing: CGFloat = 0
        static let vstackSecondSpacing: CGFloat = 0
        static let vstackThirdSpacing: CGFloat = -30
        static let dividerLeadingAndTrailingPadding: CGFloat = 20
    }
    
    var body: some View {
        VStack(spacing: Constants.vstackMainSpacing) {
            VStack(spacing: Constants.vstackSecondSpacing) {
                
                Spacer().frame(height: 10)
                
                ScrollView(showsIndicators: false) {
                    
                    VStack(spacing: Constants.vstackThirdSpacing) {
                        ProfilePicture(rectagnleSize: 165, imageSize: 150)
                        ProfilePictureEditButton()
                    }
                    
                    Spacer().frame(height: 20)
                    
                    Divider()
                        .frame(height: 1)
                        .background(DarkThemeDividerColor)
                        .padding([.leading, .trailing], Constants.dividerLeadingAndTrailingPadding)
                    
                    Spacer().frame(height: 10)
                    
                    ProfileNameSurnameTitle()
                    
                    Spacer().frame(height: 10)
                    
                    Divider()
                        .frame(height: 1)
                        .background(DarkThemeDividerColor)
                        .padding([.leading, .trailing], Constants.dividerLeadingAndTrailingPadding)
                    
                    Spacer().frame(height: 10)
                    
                    ProfileEMailTitle()
                    
                    Spacer().frame(height: 10)
                    
                    Divider()
                        .frame(height: 1)
                        .background(DarkThemeDividerColor)
                        .padding([.leading, .trailing], Constants.dividerLeadingAndTrailingPadding)
                    
                    Spacer().frame(height: 10)
                    
                    ProfilePasswordIdTitle()
                    
                    Spacer().frame(height: 10)
                    
                    Divider()
                        .frame(height: 1)
                        .background(DarkThemeDividerColor)
                        .padding([.leading, .trailing], Constants.dividerLeadingAndTrailingPadding)
                    
                    Spacer().frame(height: 10)
                    
                    ProfileRegisteredDate()
                    
                    Spacer().frame(height: 10)
                    
                    Divider()
                        .frame(height: 1)
                        .background(DarkThemeDividerColor)
                        .padding([.leading, .trailing], Constants.dividerLeadingAndTrailingPadding)
                    
                }
                
            }
            .frame(maxWidth: .infinity)
            
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
    
    private enum Constants {
        static let profileImageName = "profile_picture"
        static let rectangleClipShapeRoundedCornerRadius: CGFloat = 90
        static let imageClipShapeRoundedCornerRadius: CGFloat = 90
        static let rectangleShadowRadius: CGFloat = 1
        static let imageShadowRadius: CGFloat = 1
    }
    
    var body: some View {
        ZStack(alignment: .center) {
            Rectangle()
                .foregroundColor(DarkThemeMainLightColor)
                .frame(width: rectagnleSize, height: rectagnleSize)
                .clipShape(RoundedCorner(radius: Constants.rectangleClipShapeRoundedCornerRadius))
                .shadow(radius: Constants.rectangleShadowRadius)
            Image(Constants.profileImageName)
                .resizable()
                .frame(width: imageSize, height: imageSize)
                .clipShape(RoundedCorner(radius: Constants.imageClipShapeRoundedCornerRadius))
                .shadow(radius: Constants.imageShadowRadius)
        }
    }
}

private struct ProfilePictureEditButton: View {
    
    private enum Constants {
        static let imageName = "plus"
        static let imageClipShapeRoundedCornerRadius: CGFloat = 90
    }
    
    var body: some View {
        Button { print("Edit Picture") }
        label: {
            Image(systemName: Constants.imageName)
                .resizable()
                .frame(width: 15, height: 15)
                .foregroundColor(DarkThemeMainWhiteColor)
                .frame(width: 30, height: 30)
                .background(DarkThemeMainCardColor)
                .clipShape(RoundedCorner(radius: Constants.imageClipShapeRoundedCornerRadius))
        }
    }
}

//MARK: - PROFILE NAME / SURNAME

private struct ProfileNameSurnameTitle: View {
    
    private enum Constants {
        static let nameName = "Name"
        static let nameReal = "Yuri"
        static let surnameSurname = "Surname"
        static let surnameReal = "Cernov"
        static let vstackSpacing: CGFloat = 5
    }
    
    var body: some View {
        VStack(spacing: Constants.vstackSpacing) {
            MainCardStyle(
                mainText: Constants.nameName,
                descriptionText: Constants.nameReal,
                destination: EditProfileName()
            )
            MainCardStyle(
                mainText: Constants.surnameSurname,
                descriptionText: Constants.surnameReal,
                destination: EditProfileSurname()
            )
        }
    }
}

private struct EditProfileName: View {
    var body: some View {
        Text("Edit name")
    }
}

private struct EditProfileSurname: View {
    var body: some View {
        Text("Edit surname")
    }
}

//MARK: - PROFILE EMAIL

private struct ProfileEMailTitle: View {
    
    private enum Constants {
        static let emailEmail = "E-Mail"
        static let emailReal = "jurij.cernovs@gmail.com"
        static let secondEmailEmail = "Second E-Mail"
        static let secondEmailReal = "cernovyury@gmail.com"
        static let vstackSpacing: CGFloat = 5
    }
    
    var body: some View {
        VStack(spacing: Constants.vstackSpacing) {
            MainCardStyle(
                mainText: Constants.emailEmail,
                descriptionText: Constants.emailReal,
                destination: EditProfileMail()
            )
            MainCardStyle(
                mainText: Constants.secondEmailEmail,
                descriptionText: Constants.secondEmailReal,
                destination: EditSecondProfileMail()
            )
        }
    }
}

private struct EditProfileMail: View {
    var body: some View {
        Text("Edit mail")
    }
}

private struct EditSecondProfileMail: View {
    var body: some View {
        Text("Edit second mail")
    }
}

//MARK: - PASSWORD AND ID

private struct ProfilePasswordIdTitle: View {
    
    private enum Constants {
        static let passwordPassword = "Password"
        static let passwordReal = "**************"
        static let idId = "ID"
        static let idReal = "84bnf939d388"
        static let vstackSpacing: CGFloat = 5
    }
    
    var body: some View {
        VStack(spacing: Constants.vstackSpacing) {
            MainCardStyle(
                mainText: Constants.passwordPassword,
                descriptionText: Constants.passwordReal,
                destination: EditProfilePassword()
            )
            MainCardStyle(
                mainText: Constants.idId,
                descriptionText: Constants.idReal,
                destination: EditProfileId()
            )
        }
    }
}

private struct EditProfilePassword: View {
    var body: some View {
        Text("Edit password")
    }
}

private struct EditProfileId: View {
    var body: some View {
        Text("Edit ID")
    }
}

//MARK: - PROFILE REGISTER DATE

private struct ProfileRegisteredDate: View {
    
    private enum Constants {
        static let registeredDateText = "Registered Date"
        static let registeredDateReal = "18.05.2017"
        static let textFontName = "ubuntu-regular"
        
        static let vstackSpacing: CGFloat = 3
        static let registeredDateTextTextSize: CGFloat = 12
        static let registeredDateRealTextSize: CGFloat = 17
        
        static let hstackLeadingTrailingPadding: CGFloat = 20
        static let hstackClipShapeRoundedCornerRadius: CGFloat = 10
        static let hstackShadowRadius: CGFloat = 1
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: Constants.vstackSpacing) {
            
            Text(Constants.registeredDateText)
                .foregroundColor(DarkThemeDescriptionTextColor)
                .font(Font.custom(Constants.textFontName, size: Constants.registeredDateTextTextSize))
            
            HStack {
                Text(Constants.registeredDateReal)
                    .foregroundColor(DarkThemeStandartTextColor)
                    .font(Font.custom(Constants.textFontName, size: Constants.registeredDateRealTextSize))
                
                Spacer()
                
            }
            .padding([.leading, .trailing], Constants.hstackLeadingTrailingPadding)
            .frame(width: 365, height: 50)
            .background(DarkThemeMainCardColor)
            .clipShape(RoundedCorner(radius: Constants.hstackClipShapeRoundedCornerRadius))
            .shadow(radius: Constants.hstackShadowRadius)
            
        }
    }
}

//MARK: - MAIN CARD STYLE

enum ConstantsMainCardStyle {
    static let mainTextFontName = "ubuntu-regular"
    static let descriptionTextFontName = "ubuntu-regular"
    static let buttonText = "Edit"
    static let buttonTextFontName = "ubuntu-italic"
    
    static let vstackSpacing: CGFloat = 3
    static let hstackLeadingTrailingPadding: CGFloat = 20
    static let hstackClipShapeRoundedCornerRadius: CGFloat = 10
    static let hstackShadowRadius: CGFloat = 1
    
    static let mainTextTextSize: CGFloat = 12
    static let descriptionTextTextSize: CGFloat = 17
    static let buttonTextTextSize: CGFloat = 17
}

private struct MainCardStyle<Destination: View>: View {
    
    let mainText: String
    let descriptionText: String
    let destination: Destination
    
    var body: some View {
        VStack(alignment: .leading, spacing: ConstantsMainCardStyle.vstackSpacing) {
            
            Text(mainText)
                .foregroundColor(DarkThemeDescriptionTextColor)
                .font(
                    Font.custom(
                        ConstantsMainCardStyle.mainTextFontName,
                        size: ConstantsMainCardStyle.mainTextTextSize
                    )
                )
            
            HStack {
                Text(descriptionText)
                    .foregroundColor(DarkThemeStandartTextColor)
                    .font(
                        Font.custom(
                            ConstantsMainCardStyle.descriptionTextFontName,
                            size: ConstantsMainCardStyle.descriptionTextTextSize
                        )
                    )
                
                Spacer()
                
                Button { destination }
                label: {
                    Text(ConstantsMainCardStyle.buttonText)
                        .foregroundColor(DarkThemeMainLightColor)
                        .font(
                            Font.custom(
                                ConstantsMainCardStyle.buttonTextFontName,
                                size: ConstantsMainCardStyle.buttonTextTextSize
                            )
                        )
                }
                
            }
            .padding([.leading, .trailing], ConstantsMainCardStyle.hstackLeadingTrailingPadding)
            .frame(width: 365, height: 50)
            .background(DarkThemeMainCardColor)
            .clipShape(RoundedCorner(radius: ConstantsMainCardStyle.hstackClipShapeRoundedCornerRadius))
            .shadow(radius: ConstantsMainCardStyle.hstackShadowRadius)
            
        }
    }
}



//MARK: - PREVIEWS

struct AccauntPage_Previews: PreviewProvider {
    static var previews: some View {
        AccauntPage()
    }
}
