//
//  ComponentModel.swift
//  MRPProject
//

import Foundation

struct ComponentModel: Codable {
    let startAvaibility: Int
    let realizationTime: Int
    let batchSize: Int
}

// MARK: - Sample data

extension ComponentModel {
    static let sampleFrame = ComponentModel(startAvaibility: 22, realizationTime: 3, batchSize: 40)
    static let sampleStand = ComponentModel(startAvaibility: 22, realizationTime: 3, batchSize: 40)
    static let sampleLegs = ComponentModel(startAvaibility: 40, realizationTime: 2, batchSize: 12)
    static let sampleSmallBoards = ComponentModel(startAvaibility: 40, realizationTime: 1, batchSize: 50)
    static let sampleBigBoards = ComponentModel(startAvaibility: 200, realizationTime: 1, batchSize: 4)
}
