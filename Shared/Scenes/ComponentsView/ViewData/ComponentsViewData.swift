//
//  ComponentsViewData.swift
//  MRPProject
//

import Foundation

struct ComponentsViewData: Equatable {
    var frame = ComponentViewData(for: .frame)
    var stand = ComponentViewData(for: .stand)
    var legs = ComponentViewData(for: .legs)
    var smallPlates = ComponentViewData(for: .smallBoards)
    var bigPlates = ComponentViewData(for: .bigBoards)
}
