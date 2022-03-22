//
//  BedModel.swift
//  MRPProject
//

import Foundation

struct BedModel: Codable {
    let startAvaibility: Int
    let realizationTime: Int
    let expectedDemand: [Int]
    let production: [Int]
}

// MARK: - Sample data

extension BedModel {
    static var sample: BedModel {
        BedModel(startAvaibility: 2,
                 realizationTime: 1,
                 expectedDemand: [0, 0, 0, 0, 20, 0, 40],
                 production: [0, 0, 0, 0, 28, 0, 30]
        )
    }
}
