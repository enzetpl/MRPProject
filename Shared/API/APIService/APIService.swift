//
//  APIService.swift
//  MRPProject
//

import Combine
import Foundation

final class APIService: APIServiceProtocol {
    static let shared = APIService()
    private init() {}
    
    func performRequest<Response: Decodable>(to baseURL: URL, for apiRequest: APIRequest) -> AnyPublisher<Response, Error> {
        var urlComponents = URLComponents(url: baseURL, resolvingAgainstBaseURL: true)!
        urlComponents.path = apiRequest.path
        
        var request = URLRequest.jsonRequest(for: urlComponents.url!)
        request.httpMethod = apiRequest.httpMethod.rawValue
        
        if let body = try? apiRequest.body?.encoded(using: JSONEncoder()) {
            request.httpBody = body
        }

        return URLSession.shared.dataTaskPublisher(for: request)
            .map { $0.data }
            .map { data in
                print(try! JSONSerialization.jsonObject(with: data, options: []) as! [String: Any])
                return data
            }
            .decode(type: Response.self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
    }
}
