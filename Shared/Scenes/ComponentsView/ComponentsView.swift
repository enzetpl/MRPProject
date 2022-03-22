//
//  MRPComponentView.swift
//  Shared
//

import SwiftUI

struct ComponentsView: View {
    @Environment(\.dismiss) private var dismiss
    @ObservedObject var viewModel: DashboardVM
    
    private var components: Binding<ComponentsViewData> {
        $viewModel.bedData.componentsData
    }
    
    var body: some View {
        Form {
            ComponentSection(title: .frame_label,
                             available: components.frame.available,
                             batchSize: components.frame.batchSize,
                             productionTime: components.frame.productionTime
            )
            ComponentSection(title: .stand_label,
                             available: components.stand.available,
                             batchSize: components.stand.batchSize,
                             productionTime: components.stand.productionTime
            )
            ComponentSection(title: .legs_label,
                             available: components.legs.available,
                             batchSize: components.legs.batchSize,
                             productionTime: components.legs.productionTime
            )
            ComponentSection(title: .small_plates_label,
                             available: components.smallPlates.available,
                             batchSize: components.smallPlates.batchSize,
                             productionTime: components.smallPlates.productionTime
            )
            ComponentSection(title: .big_plates_label,
                             available: components.bigPlates.available,
                             batchSize: components.bigPlates.batchSize,
                             productionTime: components.bigPlates.productionTime
            )
        }
        .onTapGesture { hideKeyboard() }
        .keyboardType(.numberPad)
        .toolbar { Toolbar.trailing(title: .done_label, action: dismiss.callAsFunction) }
        .embedInNavigationView(title: .components_label)
    }
}

// MARK: - Preview

struct ComponentsView_Previews: PreviewProvider {
    static var previews: some View {
        ComponentsView(viewModel: .init())
    }
}
