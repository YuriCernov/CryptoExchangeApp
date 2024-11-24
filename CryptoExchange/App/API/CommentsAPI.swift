import Foundation

class CommentsAPI {
    func fetchComments(completion: @escaping (Result<[CommentsModel], Error>) -> Void) {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/comments") else { return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                DispatchQueue.main.async {
                    completion(.failure(error))
                }
                return
            }
            guard let data = data else {
                DispatchQueue.main.async {
                    completion(.failure(NSError(domain: "DataError", code: -1, userInfo: nil)))
                }
                return
            }
            
            do {
                let comments = try JSONDecoder().decode([CommentsModel].self, from: data)
                DispatchQueue.main.async {
                    completion(.success(comments))
                }
            } catch {
                DispatchQueue.main.async {
                    completion(.failure(error))
                }
            }
        } .resume()
    }
}
