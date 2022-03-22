//
//  TableValue.swift
//  MRPProject
//

import Foundation

struct TableValue: Identifiable {
    let id = UUID()
    let value: String
    
    init(_ value: String) {
        self.value = value
    }
}
