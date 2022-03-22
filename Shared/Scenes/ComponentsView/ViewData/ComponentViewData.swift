//
//  ComponentViewData.swift
//  MRPProject
//

import Foundation

struct ComponentViewData: Equatable {
    let type: ComponentType
    var available: Int
    var batchSize: Int
    var productionTime: Int

    init(for type: ComponentType) {
        self.type = type
        self.available = 0
        self.batchSize = type.batchSize
        self.productionTime = type.productionTime
    }
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
