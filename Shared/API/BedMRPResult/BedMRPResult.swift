//
//  BedMRPResult.swift
//  MRPProject
//

import Foundation

struct BedMRPResult: Decodable, Equatable {
    let bed: BedResult
    let frame: ComponentResult
    let stand: ComponentResult
    let legs: ComponentResult
    let smallBoards: ComponentResult
    let bigBoards: ComponentResult
}

extension BedMRPResult {
    var tables: [Table] {
        [frame.table,
         stand.table,
         legs.table,
         smallBoards.table,
         bigBoards.table]
    }
}
