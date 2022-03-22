//
//  APIServiceProtocol.swift
//  MRPProject
//

import Combine
import Foundation

protocol APIServiceProtocol {
    func performRequest<Response: Decodable>(to baseURL: URL, for apiRequest: APIRequest) -> AnyPublisher<Response, Error>
}
