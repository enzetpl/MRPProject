//
//  APIRequest.swift
//  MRPProject
//

import Foundation

protocol APIRequest {
    var httpMethod: HttpMethod { get }
    var path: String { get }
    var queryItems: [URLQueryItem]? { get }
    var body: Encodable? { get }
}

extension APIRequest {
    var queryItems: [URLQueryItem]? { nil }
    var body: Encodable? { nil }
}
