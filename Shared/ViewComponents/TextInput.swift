//
//  TextInput.swift
//  MRPProject
//

import SwiftUI

struct TextInput: View {
    
    let title: String
    let prompt: String?
    @Binding var value: Int
    
    init(title: String, value: Binding<Int>, prompt: String? = nil) {
        self.title = title
        self._value = value
        self.prompt = prompt
    }
    
    var body: some View {
        HStack {
            Text("\(title):")
                .bold()
            Spacer()
            if let prompt = prompt {
                TextField(title, value: $value, formatter: NumberFormatter(), prompt: Text(prompt))
            } else {
                TextField(title, value: $value, formatter: NumberFormatter())
            }
        }
    }
}

// MARK: - Preview

struct TextInput_Previews: PreviewProvider {
    static var previews: some View {
        TextInput(title: "Title", value: .constant(0))
    }
}
