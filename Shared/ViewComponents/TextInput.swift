//
//  TextInput.swift
//  MRPProject
//

import SwiftUI

struct TextInput: View {
    
    let title: String
    let prompt: String?
    @Binding var value: String
    
    init(title: String, value: Binding<String>, prompt: String? = nil) {
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
                TextField(title, text: $value, prompt: Text(prompt))
            } else {
                TextField(title, text: $value)
            }
        }
    }
}

// MARK: - Preview

struct TextInput_Previews: PreviewProvider {
    static var previews: some View {
        TextInput(title: "Title", value: .constant("0"))
    }
}
