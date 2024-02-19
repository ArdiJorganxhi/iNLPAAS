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
            VStack(alignment: .center, spacing: 23) {
                Text("Login")
                    .font(.system(size: 40, weight: .bold))
                    .foregroundStyle(Color.blue)
                Text("Welcome back, you've been missed!")
                    .font(.system(size: 18, weight: .bold))
                    .multilineTextAlignment(.center)
                FormTextField(placeholder: .email, bindingText: loginRequest.email, isSecure: false)
                FormTextField(placeholder: .password, bindingText: loginRequest.password, isSecure: true)
                Button {

                } label: {
                    Text("Login")
                        .foregroundStyle(.white)
                        .font(.system(size: 25, weight: .semibold))
                }
                .foregroundStyle(.white)
                .frame(width: 300, height: 50)
                .background(Color.blue)
                .cornerRadius(10)

                NavigationLink(destination: RegisterView()) {
                    Text("Create new account")
                        .font(.system(size: 20, weight: .semibold))

                }
                .padding(.vertical)
                .frame(maxWidth: .infinity)
                .cornerRadius(10)
                .padding(.horizontal)

                .toolbar(.hidden)

            }
        }
   
    }
}

#Preview {
    LoginView()
}
