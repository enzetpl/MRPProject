//
//  Typealiases.swift
//  MRPProject (iOS)
//

import Combine
import Foundation

typealias Driver<T> = AnyPublisher<T, Never>
typealias SubjectDriver<T> = PassthroughSubject<T, Never>
