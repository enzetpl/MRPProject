//
//  ComponentViewData.swift
//  MRPProject
//

import Foundation

struct ComponentViewData: Equatable {
    let type: ComponentType
    var available = 0
    var batchSize = 1
    var productionTime = 1
}

extension ComponentViewData {
    var model: ComponentModel {
        ComponentModel(
            startAvaibility: available,
            realizationTime: productionTime,
            batchSize: batchSize
        )
    }
}
