import SwiftUI

struct CommentsView: View {
    
    @StateObject private var viewModel = CommentsViewModel()

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
                } else if let error = viewModel.error {
                    ZStack {
                        Rectangle()
                            .foregroundColor(DarkThemeMainBackgroundColor)
                            .ignoresSafeArea()
                        Text("Error: \(error)")
                            .foregroundColor(.red)
                    }
                } else {
                    ZStack {
                        DarkThemeMainBackgroundColor.ignoresSafeArea()
                        
                        List(viewModel.comments) { comment in
                            VStack(alignment: .leading, spacing: 1) {
                                Text(comment.name)
                                    .foregroundColor(DarkThemeStandartTextColor)
                                    .font(Font.custom("ubuntu-bold", size: 15))
                                    .lineSpacing(24)
                                Spacer(minLength: 1)
                                Text(comment.body)
                                    .foregroundColor(DarkThemeSecondTextColor)
                                    .font(Font.custom("ubuntu-regular", size: 13))
                                Spacer(minLength: 1)
                                Text("Email: \(comment.email)")
                                    .font(Font.custom("ubuntu-regular", size: 12))
                                    .foregroundColor(DarkThemeDescriptionTextColor)
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
            .navigationTitle("Comments")
            .navigationBarTitleDisplayMode(.inline)
            .onAppear {
                viewModel.loadComments()
            }
        }
    }
}



#Preview {
    CommentsView()
}
