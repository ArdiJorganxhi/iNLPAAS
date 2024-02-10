//
//  FormTextField.swift
//  NLPAAS
//
//  Created by Ardi Jorganxhi on 10.2.24.
//

import SwiftUI

struct FormTextField: View {
    @State var formText: String
    @State var bindingText: String
    @State var isSecure: Bool

    var body: some View {
        if(isSecure) {
            SecureField(formText, text: $bindingText)
                .padding()
                .frame(width: 300, height: 50)
                .background(Color.black.opacity(0.05))
                .cornerRadius(10)
        } else {
            TextField(formText, text: $bindingText)
                .padding()
                .frame(width: 300, height: 50)
                .background(Color.black.opacity(0.05))
                .cornerRadius(10)
        }

    }
}

#Preview {
    FormTextField(formText: "Email", bindingText: "", isSecure: false)
}
