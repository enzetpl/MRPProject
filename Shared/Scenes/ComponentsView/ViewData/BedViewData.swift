//
//  BedViewData.swift
//  MRPProject
//

import Foundation

struct BedViewData: Equatable {
    var numberOfWeeks = 6
    var startAvaibility = 0
    var realizationTime = 1
    var weeksData: [WeekData] = WeekData.forNumberOfWeeks(6)
    var componentsData = ComponentsViewData()

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
            startAvaibility: startAvaibility,
            realizationTime: realizationTime,
            expectedDemand: weeksData.map { $0.demandInput },
            production: weeksData.map { $0.productionInput }
        )
    }
}
