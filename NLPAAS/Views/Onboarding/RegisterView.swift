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
            VStack(alignment: .center, spacing: 23) {
                Text("Register")
                    .font(.system(size: 40, weight: .bold))
                    .foregroundStyle(Color.blue)
                Text("Get ready for a great experience!")
                    .font(.system(size: 20, weight: .bold))
                    .multilineTextAlignment(.center)
                FormTextField(placeholder: .name, bindingText: registerRequest.firstName, isSecure: false)
                FormTextField(placeholder: .surname, bindingText: registerRequest.lastName, isSecure: false)
                FormTextField(placeholder: .email, bindingText: registerRequest.email, isSecure: false)
                FormTextField(placeholder: .password, bindingText: registerRequest.password, isSecure: true)
                Button {

                } label: {
                    Text("Register")
                        .foregroundStyle(.white)
                        .font(.system(size: 25, weight: .semibold))
                }
                .foregroundStyle(.white)
                .frame(width: 300, height: 50)
                .background(Color.blue)
                .cornerRadius(10)

                NavigationLink(destination: LoginView()) {
                    Text("Already have an account?")
                        .font(.system(size: 20, weight: .semibold))

                }
                .padding(.vertical)
                .frame(maxWidth: .infinity)
                .cornerRadius(10)
                .padding(.horizontal)


            }
        }
        .toolbar(.hidden)
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    RegisterView()
}
