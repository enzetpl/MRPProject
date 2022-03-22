//
//  ComponentType.swift
//  MRPProject
//

import Foundation

enum ComponentType: String, Decodable {
    case frame
    case stand
    case legs
    case smallPlates
    case bigPlates
    
    var title: String {
        switch self {
        case .frame:
            return "Rama"
        case .stand:
            return "Stelaż"
        case .legs:
            return "Nogi"
        case .smallPlates:
            return "Małe deski"
        case .bigPlates:
            return "Duże deski"
        }
    }
}

extension ComponentType: Identifiable {
    var id: String { rawValue }
}

extension ComponentType: CaseIterable {}
