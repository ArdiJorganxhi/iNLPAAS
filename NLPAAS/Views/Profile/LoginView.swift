//
//  LoginView.swift
//  NLPAAS
//
//  Created by Ardi Jorganxhi on 10.2.24.
//

import SwiftUI

struct LoginView: View {
    @State var loginRequest = LoginRequest()
    var body: some View {
        NavigationStack {
            VStack(alignment: .center, spacing: 15) {
                Text("Login")
                    .font(.largeTitle)
                    .bold()
                    .padding()
                FormTextField(formText: "Email", bindingText: loginRequest.email, isSecure: false)
                FormTextField(formText: "Password", bindingText: loginRequest.password, isSecure: true)
                Button("Login") {

                }
                .foregroundStyle(.white)
                .frame(width: 300, height: 50)
                .background(Color.blue)
                .cornerRadius(10)

                NavigationLink(destination: RegisterView()) {
                    Text("No account? Register!")
                        .foregroundStyle(.blue)
                }
                .toolbar(.hidden)

            }
        }
   
    }
}

#Preview {
    LoginView()
}
