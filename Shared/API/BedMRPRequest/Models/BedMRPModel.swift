//
//  BedMRPModel.swift
//  MRPProject
//

import Foundation

struct BedMRPModel: Codable {
    let bed: BedModel
    let frame: ComponentModel
    let stand: ComponentModel
    let legs: ComponentModel
    let smallBoards: ComponentModel
    let bigBoards: ComponentModel
}

// MARK: - Sample data

extension BedMRPModel {
    static let sample = BedMRPModel(
        bed: .sample,
        frame: .sampleFrame,
        stand: .sampleStand,
        legs: .sampleLegs,
        smallBoards: .sampleSmallBoards,
        bigBoards: .sampleBigBoards
    )
}
