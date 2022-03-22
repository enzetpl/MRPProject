//
//  BedResult.swift
//  MRPProject
//


import Foundation

struct BedResult: Decodable, Equatable {
    let expectedDemand: [Int]
    let production: [Int]
    let available: [Int]
}
