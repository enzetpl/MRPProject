//
//  Publisher+Ext.swift
//  MRPProject
//

import Combine
import Foundation

extension Publisher where Failure == Never {
    func performRequest<Model>(
        _ request: AnyPublisher<Model, Error>,
        trackError errorTracker: SubjectDriver<Error>? = nil
    ) -> Driver<Model> {
        map { _ in
            request.catch { error -> Empty in
                errorTracker?.send(error)
                return Empty()
            }
        }
        .switchToLatest()
        .receive(on: DispatchQueue.main)
        .eraseToAnyPublisher()
    }
}
