//
//  ComponentType.swift
//  MRPProject
//

import Foundation

enum ComponentType: String, Decodable {
    case frame
    case stand
    case legs
    case smallBoards
    case bigBoards

    var batchSize: Int {
        switch self {
        case .frame:
            return 5
        case .stand:
            return 5
        case .legs:
            return 20
        case .smallBoards:
            return 100
        case .bigBoards:
            return 30
        }
    }

    var productionTime: Int {
        switch self {
        case .frame:
            return 2
        case .stand:
            return 2
        case .legs:
            return 1
        case .smallBoards:
            return 1
        case .bigBoards:
            return 2
        }
    }

    var title: String {
        switch self {
        case .frame:
            return "Rama"
        case .stand:
            return "Stelaż"
        case .legs:
            return "Nogi"
        case .smallBoards:
            return "Małe deski"
        case .bigBoards:
            return "Duże deski"
        }
    }
}

extension ComponentType: Identifiable {
    var id: String { rawValue }
}

extension ComponentType: CaseIterable {}
