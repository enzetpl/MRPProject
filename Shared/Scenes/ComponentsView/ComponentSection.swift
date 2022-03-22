//
//  ComponentSection.swift
//  MRPProject
//

import SwiftUI

struct ComponentSection: View {
    
    let title: String
    @Binding var available: String
    @Binding var batchSize: String
    @Binding var productionTime: String
    
    var body: some View {
        Section(title) {
            TextInput(title: .available_label, value: $available)
            TextInput(title: .batchSize_label, value: $batchSize)
            TextInput(title: .productionTime_label, value: $productionTime)
        }
    }
}

// MARK: - Preview

struct ComponentSection_Previews: PreviewProvider {
    static var previews: some View {
        ComponentSection(title: "Frame", available: .constant("10"), batchSize: .constant("20"), productionTime: .constant("2"))
    }
}
