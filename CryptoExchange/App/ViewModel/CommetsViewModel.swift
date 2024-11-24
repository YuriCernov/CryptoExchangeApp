import Foundation
import Combine

class CommentsViewModel: ObservableObject {
    
    @Published var comments: [CommentsModel] = []
    @Published var isLoading: Bool = false
    @Published var error: String? = nil
    
    private let commentsAPI = CommentsAPI()
    
    func loadComments() {
        isLoading = true
        error = nil
        
        commentsAPI.fetchComments { [weak self] result in
            guard let self = self else { return }
            
            self.isLoading = false
            switch result {
            case .success(let comments):
                self.comments = comments
            case .failure(let error):
                self.error = error.localizedDescription
            }
        }
    }
}
