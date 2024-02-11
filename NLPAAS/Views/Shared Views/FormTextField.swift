//
//  FormTextField.swift
//  NLPAAS
//
//  Created by Ardi Jorganxhi on 10.2.24.
//

import SwiftUI

enum FocusedField: String {
    case name = "Name"
    case surname = "Surname"
    case email = "Email"
    case password = "Password"
}

struct FormTextField: View {
    @State var placeholder: FocusedField
    @State var bindingText: String
    @State var isSecure: Bool
    @FocusState var focusField: FocusedField?
    @State var whichFocus: FocusedField?

    var body: some View {
        if(isSecure) {
            SecureField(placeholder.rawValue, text: $bindingText)
                .focused($focusField, equals: placeholder)
                .padding()
                .frame(width: 300, height: 50)
                .background(Color.blue.opacity(0.05))
                .cornerRadius(10)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(focusField == placeholder ? Color.blue: Color.white, lineWidth: 2)
                )
                .onTapGesture {
                    focusField = placeholder
                }
        } else {
            TextField(placeholder.rawValue, text: $bindingText)
                .focused($focusField, equals: placeholder)
                .padding()
                .frame(width: 300, height: 50)
                .background(Color.blue.opacity(0.05))
                .cornerRadius(10)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(focusField == placeholder ? Color.blue: Color.white, lineWidth: 2)
                )
                .onTapGesture {
                    focusField = placeholder
                }
        }

    }
}

#Preview {
    FormTextField(placeholder: .email, bindingText: "", isSecure: false, whichFocus: .email)
}
