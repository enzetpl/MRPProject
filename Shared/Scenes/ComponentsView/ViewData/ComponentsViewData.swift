//
//  ComponentsViewData.swift
//  MRPProject
//

import Foundation

struct ComponentsViewData: Equatable {
    var frame = ComponentViewData(type: .frame)
    var stand = ComponentViewData(type: .stand)
    var legs = ComponentViewData(type: .legs)
    var smallPlates = ComponentViewData(type: .smallPlates)
    var bigPlates = ComponentViewData(type: .bigPlates)
}
