//
//  WeekInput.swift
//  MRPProject
//

import SwiftUI

struct WeekInput: View {
    
    @Binding private var weekData: WeekData
    
    init(for weekData: Binding<WeekData>) {
        self._weekData = weekData
    }
    
    var body: some View {
        Section("Tydzień \(weekData.weekNumber)") {
            TextInput(title: "Zapotrzebowanie", value: $weekData.demandInput)
            TextInput(title: "Produkcja", value: $weekData.productionInput)
        }
        .keyboardType(.numberPad)
    }
}

// MARK: - Preview

struct WeekInput_Previews: PreviewProvider {
    static var previews: some View {
        WeekInput(for: .constant(.init(weekNumber: 1)))
    }
}
