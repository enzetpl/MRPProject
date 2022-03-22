//
//  BedMRPService.swift
//  MRPProject
//

import Combine
import Foundation

final class BedMRPService {

    private let baseURL = URL(string: "https://infinite-dusk-35346.herokuapp.com")!
    private let apiService: APIServiceProtocol
    
    init(apiService: APIServiceProtocol = APIService.shared) {
        self.apiService = apiService
    }
    
    func calculateBedMRP(for model: BedMRPModel) -> AnyPublisher<BedMRPResult, Error> {
        print("Send: \(model)")
        return apiService.performRequest(to: baseURL, for: GetBedMRPRequest(body: model))
    }
}
