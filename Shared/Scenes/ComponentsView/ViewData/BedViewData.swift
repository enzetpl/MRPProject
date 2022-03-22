//
//  BedViewData.swift
//  MRPProject
//

import Foundation

struct BedViewData: Equatable {
    var weeksData = WeekData.forNumberOfWeeks(BedViewData.numberOfWeeks)
    var componentsData = ComponentsViewData()
    
    static private let startAvaibility = 2
    static private let realizationTime = 1
    static private let numberOfWeeks = 6

    var bedMRPModel: BedMRPModel {
        BedMRPModel(
            bed: bedModel,
            frame: componentsData.frame.model,
            stand: componentsData.stand.model,
            legs: componentsData.legs.model,
            smallBoards: componentsData.smallPlates.model,
            bigBoards: componentsData.bigPlates.model
        )
    }

    private var bedModel: BedModel {
        BedModel(
            startAvaibility: BedViewData.startAvaibility,
            realizationTime: BedViewData.realizationTime,
            expectedDemand: weeksData.map { Int($0.demandInput)! },
            production: weeksData.map { Int($0.productionInput)! }
        )
    }
}
