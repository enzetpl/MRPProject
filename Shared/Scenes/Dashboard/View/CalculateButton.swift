//
//  CalculateButton.swift
//  MRPProject (iOS)
//
//  Created by sebastianstaszczyk on 18/03/2022.
//

import SwiftUI

struct CalculateButton: View {
    
    let isDisabled: Bool
    let action: () -> Void
    
    var body: some View {
        Button(String.calculate_label, action: action)
            .buttonStyle(MainButtonStyle())
            .disabled(isDisabled)
    }
}

// MARK: - Preview

struct CalculateButton_Previews: PreviewProvider {
    static var previews: some View {
        CalculateButton(isDisabled: false, action: {})
    }
}
