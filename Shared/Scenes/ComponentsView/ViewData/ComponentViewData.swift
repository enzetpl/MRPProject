//
//  ComponentViewData.swift
//  MRPProject
//

import Foundation

struct ComponentViewData: Equatable {
    let type: ComponentType
    var available: String = "0"
    var batchSize: String = "1"
    var productionTime: String = "1"
}

extension ComponentViewData {
    var model: ComponentModel {
        ComponentModel(startAvaibility: Int(available)!,
                       realizationTime: Int(productionTime)!,
                       batchSize: Int(batchSize)!)
    }
}
