//
//  URLRequest+Ext.swift
//  MRPProject
//

import Foundation

extension URLRequest {
    static func jsonRequest(for url: URL) -> URLRequest {
        var request = URLRequest(url: url)
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        return request
    }
}
