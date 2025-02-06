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
                    
                    Divider()
                        .frame(height: 1)
                        .background(DarkThemeDividerColor)
                        .padding([.leading, .trailing], 20)
                    
                    Spacer().frame(height: 10)
                    
                    ProfileNameSurnameTitle()
                    
                    Spacer().frame(height: 10)
                    
                    Divider()
                        .frame(height: 1)
                        .background(DarkThemeDividerColor)
                        .padding([.leading, .trailing], 20)
                    
                    Spacer().frame(height: 10)
                    
                    ProfileEMailTitle()
                    
                    Spacer().frame(height: 10)
                    
                    Divider()
                        .frame(height: 1)
                        .background(DarkThemeDividerColor)
                        .padding([.leading, .trailing], 20)
                    
                    Spacer().frame(height: 10)
                    
                    ProfilePasswordIdTitle()
                    
                    Spacer().frame(height: 10)
                    
                    Divider()
                        .frame(height: 1)
                        .background(DarkThemeDividerColor)
                        .padding([.leading, .trailing], 20)
                    
                    Spacer().frame(height: 10)
                    
                    ProfileRegisteredDate()
                    
                    Spacer().frame(height: 10)
                    
                    Divider()
                        .frame(height: 1)
                        .background(DarkThemeDividerColor)
                        .padding([.leading, .trailing], 20)
                    
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
    
    private enum ConstantsNameSurname {
        static let nameName = "Name"
        static let nameReal = "Yuri"
        static let surnameSurname = "Surname"
        static let surnameReal = "Cernov"
    }
    
    var body: some View {
        VStack(spacing: 5) {
            MainCardStyle(
                mainText: ConstantsNameSurname.nameName,
                descriptionText: ConstantsNameSurname.nameReal,
                destination: EditProfileName()
            )
            MainCardStyle(
                mainText: ConstantsNameSurname.surnameSurname,
                descriptionText: ConstantsNameSurname.surnameReal,
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
    
    private enum ConstantsEMail {
        static let emailEmail = "E-Mail"
        static let emailReal = "jurij.cernovs@gmail.com"
        static let secondEmailEmail = "Second E-Mail"
        static let secondEmailReal = "cernovyury@gmail.com"
    }
    
    var body: some View {
        VStack(spacing: 5) {
            MainCardStyle(
                mainText: ConstantsEMail.emailEmail,
                descriptionText: ConstantsEMail.emailReal,
                destination: EditProfileMail()
            )
            MainCardStyle(
                mainText: ConstantsEMail.secondEmailEmail,
                descriptionText: ConstantsEMail.secondEmailReal,
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
    
    private enum ConstantsPasswordId {
        static let passwordPassword = "Password"
        static let passwordReal = "**************"
        static let idId = "ID"
        static let idReal = "84bnf939d388"
    }
    
    var body: some View {
        VStack(spacing: 5) {
            MainCardStyle(
                mainText: ConstantsPasswordId.passwordPassword,
                descriptionText: ConstantsPasswordId.passwordReal,
                destination: EditProfilePassword()
            )
            MainCardStyle(
                mainText: ConstantsPasswordId.idId,
                descriptionText: ConstantsPasswordId.idReal,
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
    
    private enum ConstantsRegisteredDate {
        static let registeredDateRegisteredDate = "Registered Date"
        static let registeredDateReal = "18.05.2017"
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 3) {
            
            Text(ConstantsRegisteredDate.registeredDateRegisteredDate)
                .foregroundColor(DarkThemeDescriptionTextColor)
                .font(Font.custom("ubuntu-regular", size: 12))
            
            HStack {
                Text(ConstantsRegisteredDate.registeredDateReal)
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

private struct MainCardStyle<Destination: View>: View {
    
    let mainText: String
    let descriptionText: String
    let destination: Destination
    
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
                
                Button { destination }
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
