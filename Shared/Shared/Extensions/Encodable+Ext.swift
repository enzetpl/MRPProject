//
//  Encodable+Ext.swift
//  MRPProject
//

import Foundation

extension Encodable {
    func encoded(using encoder: JSONEncoder) throws -> Data {
        try encoder.encode(self)
    }
}
