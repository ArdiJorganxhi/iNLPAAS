//
//  RegisterView.swift
//  NLPAAS
//
//  Created by Ardi Jorganxhi on 11.2.24.
//

import SwiftUI

struct RegisterView: View {
    @State var registerRequest = RegisterRequest()
    var body: some View {
        NavigationStack {
            VStack(alignment: .center, spacing: 15) {
                Text("Register")
                    .font(.largeTitle)
                    .bold()
                    .padding()
                FormTextField(formText: "Name", bindingText: registerRequest.firstName, isSecure: false)
                FormTextField(formText: "Surname", bindingText: registerRequest.lastName, isSecure: false)
                FormTextField(formText: "Email", bindingText: registerRequest.email, isSecure: false)
                FormTextField(formText: "Password", bindingText: registerRequest.password, isSecure: true)
                Button("Register") {

                }
                .foregroundStyle(.white)
                .frame(width: 300, height: 50)
                .background(Color.blue)
                .cornerRadius(10)


            }
        }
        .toolbar(.hidden)
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    RegisterView()
}
