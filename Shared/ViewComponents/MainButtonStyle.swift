//
//  MainButtonStyle.swift
//  MRPProject
//

import SwiftUI

struct MainButtonStyle: ButtonStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(maxWidth: .infinity)
            .frame(height: 50)
            .background(Color.blue)
            .cornerRadius(10)
            .padding(.top, .large)
            .padding(.horizontal, .medium)
            .font(.title3.bold())
            .foregroundColor(.white)
    }
}
