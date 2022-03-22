//
//  CellView.swift
//  MRPProject
//
//  Created by sebastianstaszczyk on 15/03/2022.
//

import SwiftUI

struct CellView: View {
    @Environment(\.colorScheme) private var colorScheme
    
    let text: String
    let isBold: Bool
    let alignment: Alignment
    
    var body: some View {
        Rectangle()
            .border(Color(uiColor: .systemBackground), width: 2)
            .frame(minHeight: 60)
            .overlay(cellView, alignment: alignment)
            .foregroundColor(Color(uiColor: colorScheme == .dark ? .darkGray : .lightGray))
    }
    
    private var cellView: some View {
        textView
            .foregroundColor(.white)
            .padding(.horizontal, .small)
    }
    
    private var textView: some View {
        Text(text).fontWeight(isBold ? .heavy : .regular)
    }
}


// MARK: - Preview

struct CellView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CellView(text: "Bold", isBold: true, alignment: .leading)
            CellView(text: "Thin", isBold: false, alignment: .leading)
        }
        .previewLayout(.sizeThatFits)
        .frame(width: 60, height: 60)
    }
}
