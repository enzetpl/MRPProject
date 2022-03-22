//
//  TableItem.swift
//  MRPProject
//

import Foundation

struct TableItem: Identifiable {
    let id = UUID()
    let title: String
    let values: [TableValue]
}

// MARK: - Sample data

extension TableItem {
    static let sampleWeek = TableItem(title: "Tydzień", values: [.init("1"), .init("2"), .init("3"), .init("4"), .init("5"), .init("6"), .init("7"), .init("8"), .init("9"), .init("10"),])
    
    static func sample(withTitle title: String) -> TableItem {
        let values: [TableValue] = [.init("0"), .init("0"), .init("0"), .init("0"), .init("0"), .init("0"), .init("0"), .init("0"), .init("0"), .init("0")]
        return .init(title: title, values: values)
    }
}
