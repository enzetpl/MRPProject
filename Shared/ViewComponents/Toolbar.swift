//
//  Toolbar.swift
//  MRPProject
//

import SwiftUI

struct Toolbar {}

extension Toolbar {

    /// Creates an ToolbarItem item which will be placed in navigationBarTrailing.
    /// - Parameters:
    ///   - systemImage: Name of the SFSymbol that repserents icon.
    ///   - action: Action that will be performed when user press the button.
    static func trailing(title: String, action: @escaping () -> Void) -> some ToolbarContent {
        ToolbarItem(placement: .navigationBarTrailing) {
            Button(title) { action() }
        }
    }
    
    static func bottomBar<Content: View>(@ViewBuilder content: @escaping () -> Content) -> some ToolbarContent {
        ToolbarItem(placement: .bottomBar, content: content)
    }
}
